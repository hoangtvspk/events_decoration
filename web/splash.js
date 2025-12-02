(function () {
  "use strict";

  // Hide Flutter's default loading indicator immediately
  function hideFlutterLoader() {
    // Hide Flutter loader and indeterminate specifically
    const selectors = [
      ".flutter-loader",
      ".flutter-loader *", // All children of flutter-loader
      ".indeterminate",
      ".flutter-loading",
      "[class*='flutter-loading']",
      "[id*='flutter-loading']",
    ];

    selectors.forEach((selector) => {
      try {
        const elements = document.querySelectorAll(selector);
        elements.forEach((el) => {
          // Don't hide our custom splash screen loader
          if (
            !el.closest("#splash-screen") &&
            !el.classList.contains("splash-loader") &&
            !el.closest(".splash-loader") &&
            !el.classList.contains("splash-loader-dot")
          ) {
            el.style.display = "none";
            el.style.visibility = "hidden";
            el.style.opacity = "0";
            el.style.pointerEvents = "none";
            el.style.position = "absolute";
            el.style.left = "-9999px";
          }
        });
      } catch (e) {
        // Ignore selector errors
      }
    });

    // Also check for elements with "loading" or "indeterminate" in class or id
    const allElements = document.querySelectorAll("*");
    allElements.forEach((el) => {
      const className = el.className?.toString() || "";
      const id = el.id || "";
      if (
        (className.includes("loading") ||
          id.includes("loading") ||
          className.includes("indeterminate")) &&
        !el.closest("#splash-screen")
      ) {
        // Don't hide our custom splash screen loader
        if (
          !className.includes("splash-loader") &&
          !id.includes("splash-loader") &&
          !el.classList.contains("splash-loader-dot")
        ) {
          el.style.display = "none";
          el.style.visibility = "hidden";
          el.style.opacity = "0";
          el.style.pointerEvents = "none";
        }
      }
    });
  }

  // Run immediately and on DOM changes
  hideFlutterLoader();

  // Use MutationObserver to hide any Flutter loading indicators that appear
  const observer = new MutationObserver(function (mutations) {
    hideFlutterLoader();
  });

  observer.observe(document.body, {
    childList: true,
    subtree: true,
    attributes: true,
    attributeFilter: ["class", "id"],
  });

  let splashRemoved = false;
  let hasError = false;
  let checkInterval = null;

  function showError(message) {
    if (hasError || splashRemoved) return;
    hasError = true;

    const splashScreen = document.getElementById("splash-screen");
    const errorDiv = document.getElementById("splash-error");
    const errorMessage = document.getElementById("error-message");

    if (splashScreen && errorDiv && errorMessage) {
      splashScreen.classList.add("has-error");
      errorMessage.textContent = message || errorMessage.textContent;
      errorDiv.classList.add("show");
    }

    // Clear any running intervals
    if (checkInterval) {
      clearInterval(checkInterval);
      checkInterval = null;
    }
  }

  function removeSplash() {
    if (splashRemoved || hasError) return;
    splashRemoved = true;

    // Clear any running intervals
    if (checkInterval) {
      clearInterval(checkInterval);
      checkInterval = null;
    }

    // Stop observing once splash is removed
    observer.disconnect();

    // Final check to hide any Flutter loaders
    hideFlutterLoader();

    const splashScreen = document.getElementById("splash-screen");
    if (splashScreen) {
      splashScreen.classList.add("fade-out");
      setTimeout(function () {
        if (splashScreen.parentNode) {
          splashScreen.remove();
        }
      }, 500);
    }
  }

  // Error handlers for script loading
  window.addEventListener("error", function (event) {
    // Check if it's a script loading error
    if (
      event.target &&
      (event.target.tagName === "SCRIPT" || event.target.tagName === "LINK")
    ) {
      const isNetworkError =
        !navigator.onLine ||
        event.message.includes("Failed to fetch") ||
        event.message.includes("NetworkError") ||
        event.message.includes("Load failed");

      if (isNetworkError) {
        showError(
          "Network error detected. Please check your internet connection and try again."
        );
      } else {
        showError(
          "Failed to load application resources. Please refresh the page."
        );
      }
    }
  });

  // Handle unhandled promise rejections (e.g., failed to load Flutter)
  window.addEventListener("unhandledrejection", function (event) {
    const error = event.reason;
    if (
      error &&
      (error.message.includes("Failed to fetch") ||
        error.message.includes("NetworkError") ||
        error.message.includes("Load failed"))
    ) {
      showError(
        "Network error detected. Please check your internet connection and try again."
      );
    }
  });

  // Check online/offline status
  window.addEventListener("offline", function () {
    if (!splashRemoved && !hasError) {
      showError(
        "You are currently offline. Please check your internet connection."
      );
    }
  });

  // Method 1: Listen for Flutter's first frame event
  window.addEventListener("flutter-first-frame", removeSplash, {
    once: true,
  });

  // Listen for Flutter errors
  window.addEventListener("flutter-error", function (event) {
    showError(
      event.detail?.message ||
        "An error occurred while loading the application."
    );
  });

  // Method 2: Check if Flutter app has loaded by checking for Flutter object AND actual rendered content
  function checkFlutterLoaded() {
    try {
      if (window.flutter && window.flutter.loader) {
        // Check if loader has error state
        if (
          window.flutter.loader.error ||
          (window.flutter.loader.loaderState &&
            window.flutter.loader.loaderState === "error")
        ) {
          showError(
            "Failed to initialize Flutter application. Please refresh the page."
          );
          return false;
        }

        // Check if Flutter has actually rendered content
        // Look for Flutter's root element or any Flutter-rendered content
        const flutterRoot = document.querySelector("flt-scene-host");
        const flutterCanvas = document.querySelector("flt-scene-host canvas");
        const flutterGlassPane = document.querySelector("flt-glass-pane");

        // Also check if body has content other than splash screen
        const bodyChildren = Array.from(document.body.children);
        const hasFlutterContent = bodyChildren.some((child) => {
          return (
            child.id !== "splash-screen" &&
            (child.tagName === "FLT-SCENE-HOST" ||
              child.querySelector("flt-scene-host") ||
              child.querySelector("canvas"))
          );
        });

        // Only remove splash if Flutter has actually rendered content
        if (
          flutterRoot &&
          (flutterCanvas || flutterGlassPane || hasFlutterContent)
        ) {
          // Wait a bit more to ensure content is visible
          setTimeout(removeSplash, 300);
          return true;
        }

        // Flutter loader exists but no content yet - still loading
        return false;
      }
    } catch (e) {
      // Silently handle errors during check
    }
    return false;
  }

  // Poll for Flutter loader (check every 100ms)
  let checkCount = 0;
  const maxChecks = 100; // 10 seconds max (increased for slow connections)
  checkInterval = setInterval(function () {
    checkCount++;
    if (checkFlutterLoaded() || checkCount >= maxChecks) {
      clearInterval(checkInterval);
      checkInterval = null;
      if (!splashRemoved && !hasError && checkCount >= maxChecks) {
        // Check if we're offline
        if (!navigator.onLine) {
          showError(
            "You are currently offline. Please check your internet connection."
          );
        } else {
          // Check one more time if Flutter content exists
          const flutterRoot = document.querySelector("flt-scene-host canvas");
          if (flutterRoot) {
            setTimeout(removeSplash, 300);
          } else {
            // Still no content - might be an error or very slow connection
            // Keep splash screen visible a bit longer
            setTimeout(function () {
              const stillNoContent = !document.querySelector(
                "flt-scene-host canvas"
              );
              if (stillNoContent && !splashRemoved) {
                // Show error after additional wait
                showError(
                  "The application is taking longer than expected to load. Please check your internet connection and refresh the page."
                );
              } else if (!splashRemoved) {
                removeSplash();
              }
            }, 2000);
          }
        }
      }
    }
  }, 100);

  // Method 3: Fallback timeout (safety net) - increased to 15 seconds for slow connections
  setTimeout(function () {
    if (!splashRemoved && !hasError) {
      // Check if we're still loading or if there's an error
      if (!navigator.onLine) {
        showError(
          "You are currently offline. Please check your internet connection."
        );
      } else {
        // Check if Flutter content exists
        const flutterRoot = document.querySelector("flt-scene-host canvas");
        if (flutterRoot) {
          // Content exists, just remove splash
          removeSplash();
        } else if (!window.flutter || !window.flutter.loader) {
          // No Flutter loader at all - likely an error
          showError(
            "Failed to load Flutter application. Please refresh the page."
          );
        } else {
          // Flutter loader exists but no content - might be slow
          // Wait a bit more before showing error
          setTimeout(function () {
            if (!splashRemoved && !hasError) {
              const stillNoContent = !document.querySelector(
                "flt-scene-host canvas"
              );
              if (stillNoContent) {
                showError(
                  "The application is taking longer than expected to load. Please refresh the page."
                );
              } else {
                removeSplash();
              }
            }
          }, 2000);
        }
      }
    }
  }, 15000); // 15 seconds timeout
})();
