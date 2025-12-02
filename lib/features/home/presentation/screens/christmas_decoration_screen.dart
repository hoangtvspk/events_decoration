import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bui_bloc/core/widgets/text/text.dart';
import '../widgets/christmas/snow_animation.dart';
import '../widgets/christmas/christmas_tree.dart';
import '../widgets/christmas/gift_box.dart';
import '../widgets/christmas/light_bulb.dart';
import '../widgets/christmas/flip_greeting_card.dart';

class ChristmasDecorationScreen extends StatefulWidget {
  const ChristmasDecorationScreen({super.key});

  @override
  State<ChristmasDecorationScreen> createState() =>
      _ChristmasDecorationScreenState();
}

class _ChristmasDecorationScreenState extends State<ChristmasDecorationScreen>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late AnimationController _iconPulseController;
  late AnimationController _textGlowController;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _iconPulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _textGlowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);

    _fadeController.forward();
    _slideController.forward();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    _iconPulseController.dispose();
    _textGlowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    final isTablet = screenWidth >= 600 && screenWidth < 1024;
    final isDesktop = screenWidth >= 1024;

    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF0A0E27), // Dark blue
                  Color(0xFF1A1A2E), // Darker blue
                  Color(0xFF16213E), // Navy
                ],
                stops: [0.0, 0.5, 1.0],
              ),
            ),
          ),

          // Snow animation
          const SnowAnimation(snowflakeCount: 60),

          // Content
          SafeArea(
            child: FadeTransition(
              opacity: _fadeController,
              child: isDesktop
                  ? _buildDesktopNoScrollLayout(isMobile, isTablet, isDesktop)
                  : CustomScrollView(
                      physics: const BouncingScrollPhysics(),
                      slivers: [
                        // Header
                        _buildHeader(isMobile, isTablet, isDesktop),

                        // Main content
                        SliverPadding(
                          padding: EdgeInsets.symmetric(
                            horizontal: isMobile
                                ? 16
                                : isTablet
                                    ? 32
                                    : 48,
                            vertical: 0,
                          ),
                          sliver:
                              _buildMobileLayout(isMobile, isTablet, isDesktop),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(bool isMobile, bool isTablet, bool isDesktop) {
    return SliverAppBar(
      expandedHeight: isMobile
          ? 100
          : isTablet
              ? 150
              : 180,
      collapsedHeight: isMobile
          ? 80.0
          : isTablet
              ? 80.0
              : 100.0,
      floating: false,
      pinned: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.only(
          bottom: isMobile ? 20 : 24,
        ),
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFF0A0E27).withOpacity(0.8),
                const Color(0xFF0A0E27).withOpacity(0.4),
                Colors.transparent,
              ],
              stops: const [0.0, 0.5, 1.0],
            ),
          ),
        ),
        title: FadeTransition(
          opacity: _fadeController,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.5),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: _slideController,
              curve: Curves.easeOutCubic,
            )),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Animated icons với pulse effect
                AnimatedBuilder(
                  animation: _iconPulseController,
                  builder: (context, child) {
                    return Image.asset('assets/images/header_text.png',
                        height: 40);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGreetingSection(bool isMobile, bool isTablet) {
    return FadeTransition(
      opacity: _fadeController,
      child: Container(
        padding: EdgeInsets.all(isMobile ? 20 : 24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red.withOpacity(0.2),
              Colors.green.withOpacity(0.2),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Column(
          children: [
            AppText(
              '🎄 Chúc Mừng Giáng Sinh 🎄',
              style: GoogleFonts.openSans(
                fontSize: isMobile
                    ? 20
                    : isTablet
                        ? 24
                        : 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: isMobile ? 8 : 12),
            AppText(
              'Wishing you a joyful Christmas filled with love, peace, and happiness!',
              style: GoogleFonts.openSans(
                fontSize: isMobile ? 14 : 16,
                color: Colors.white.withOpacity(0.9),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout(bool isMobile, bool isTablet, bool isDesktop) {
    return SliverList(
      delegate: SliverChildListDelegate([
        // Greeting section
        _buildGreetingSection(isMobile, isTablet),

        SizedBox(height: isMobile ? 24 : 40),

        // Christmas tree section
        _buildTreeSection(isMobile, isTablet, isDesktop),

        SizedBox(height: isMobile ? 24 : 40),

        FlipGreetingCard(
          isMobile: isMobile,
          isTablet: isTablet,
          isDesktop: isDesktop,
        ),

        SizedBox(height: isMobile ? 24 : 40),

        // Gifts section
        _buildGiftsSection(isMobile, isTablet, isDesktop),

        SizedBox(height: isMobile ? 24 : 40),

        // Lights section
        _buildLightsSection(isMobile, isTablet, isDesktop),

        SizedBox(height: isMobile ? 24 : 40),

        // Message section
        _buildMessageSection(isMobile, isTablet),

        SizedBox(height: 32),
      ]),
    );
  }

  Widget _buildDesktopNoScrollLayout(
      bool isMobile, bool isTablet, bool isDesktop) {
    return Column(
      children: [
        // Header - fixed at top
        _buildDesktopHeader(isMobile, isTablet, isDesktop),

        // Main content - takes remaining space
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Một tấm thẻ có thể lật được, mỗi lần lật sẽ tạo hiển thị một Content khác nhau
                // Trước mắt hiển thị một tấm thẻ với nội dung là một lời chúc, sau đó chúng ta sẽ thay đổi sau
                FlipGreetingCard(
                  isMobile: isMobile,
                  isTablet: isTablet,
                  isDesktop: isDesktop,
                ),
                const SizedBox(width: 48),
                Expanded(
                  child: _buildTreeSection(isMobile, isTablet, isDesktop),
                ),

                // Tree section - takes remaining space
              ],
            ),
          ),
        ),

        // Lights section - fixed at bottom
        _buildLightsSection(isMobile, isTablet, isDesktop),
      ],
    );
  }

  Widget _buildDesktopHeader(bool isMobile, bool isTablet, bool isDesktop) {
    return Container(
      height: 180,
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Center(
        child: AnimatedBuilder(
          animation: _iconPulseController,
          builder: (context, child) {
            return Image.asset('assets/images/header_text.png', height: 120);
          },
        ),
      ),
    );
  }

  Widget _buildTreeSection(bool isMobile, bool isTablet, bool isDesktop) {
    final treeSize = isMobile
        ? 180.0
        : isTablet
            ? 220.0
            : isDesktop
                ? 400.0
                : 280.0;

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0.3),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: _slideController,
        curve: const Interval(0.2, 1.0, curve: Curves.easeOutCubic),
      )),
      child: Container(
        padding: EdgeInsets.all(isMobile
            ? 20
            : isDesktop
                ? 0
                : 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ChristmasTree(
                size: treeSize,
                animated: true,
                useLottie: true,
                // Beautiful animated Christmas tree from LottieFiles
                lottieAssetPath: 'assets/lottie/christmas_tree_animated.json',
                // Alternative: Download a Lottie file and place in assets/lottie/, then use:
                // lottieAssetPath: 'assets/lottie/christmas_tree.json',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGiftsSection(bool isMobile, bool isTablet, bool isDesktop) {
    final giftSize = isMobile
        ? 70.0
        : isTablet
            ? 85.0
            : isDesktop
                ? 110.0
                : 100.0;
    final crossAxisCount = isMobile
        ? 3
        : isTablet
            ? 4
            : isDesktop
                ? 3
                : 5;

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0.3),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: _slideController,
        curve: const Interval(0.3, 1.0, curve: Curves.easeOutCubic),
      )),
      child: Container(
        padding: EdgeInsets.all(isMobile ? 20 : 32),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: Colors.red.withOpacity(0.3),
            width: 2,
          ),
        ),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: isMobile ? 12 : 16,
                mainAxisSpacing: isMobile ? 12 : 16,
                childAspectRatio: 1,
              ),
              itemCount: crossAxisCount * 2,
              itemBuilder: (context, index) {
                final colors = [
                  [Colors.red, Colors.green],
                  [Colors.blue, Colors.yellow],
                  [Colors.purple, Colors.orange],
                  [Colors.pink, Colors.cyan],
                  [Colors.amber, Colors.teal],
                ];
                final colorPair = colors[index % colors.length];
                return GiftBox(
                  size: giftSize,
                  boxColor: colorPair[0],
                  ribbonColor: colorPair[1],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLightsSection(bool isMobile, bool isTablet, bool isDesktop) {
    final lightCount = isMobile
        ? 5
        : isTablet
            ? 7
            : isDesktop
                ? 15
                : 9;

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0.3),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: _slideController,
        curve: const Interval(0.4, 1.0, curve: Curves.easeOutCubic),
      )),
      child: Container(
        padding: EdgeInsets.all(isMobile ? 20 : 32),
        // decoration: BoxDecoration(
        //   color: Colors.white.withOpacity(0.05),
        //   borderRadius: BorderRadius.circular(24),
        //   border: Border.all(
        //     color: Colors.yellow.withOpacity(0.3),
        //     width: 2,
        //   ),
        // ),
        child: Column(
          children: [
            LightString(
              count: lightCount,
              spacing: isMobile
                  ? 30
                  : isDesktop
                      ? 50
                      : 40,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageSection(bool isMobile, bool isTablet) {
    return FadeTransition(
      opacity: CurvedAnimation(
        parent: _fadeController,
        curve: const Interval(0.5, 1.0),
      ),
      child: Container(
        padding: EdgeInsets.all(isMobile ? 20 : 32),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red.withOpacity(0.3),
              Colors.green.withOpacity(0.3),
            ],
          ),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 2,
          ),
        ),
        child: Column(
          children: [
            AppText(
              '🎅 Ho Ho Ho! 🎅',
              style: GoogleFonts.openSans(
                fontSize: isMobile ? 24 : 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: isMobile ? 12 : 16),
            AppText(
              'May this Christmas bring you warmth, joy, and wonderful memories with your loved ones.',
              style: GoogleFonts.openSans(
                fontSize: isMobile ? 14 : 16,
                color: Colors.white.withOpacity(0.9),
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: isMobile ? 12 : 16),
            AppText(
              '✨ Merry Christmas & Happy New Year! ✨',
              style: GoogleFonts.openSans(
                fontSize: isMobile ? 16 : 18,
                fontWeight: FontWeight.w600,
                color: Colors.yellow,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
