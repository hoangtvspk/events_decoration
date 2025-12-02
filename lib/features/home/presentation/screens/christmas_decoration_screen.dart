import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bui_bloc/core/widgets/text/text.dart';
import 'package:bui_bloc/core/utils/screen_size_extension.dart';
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
              child: context.isDesktop
                  ? _buildDesktopNoScrollLayout(context)
                  : CustomScrollView(
                      physics: const BouncingScrollPhysics(),
                      slivers: [
                        // Header
                        _buildHeader(context),

                        // Main content
                        SliverPadding(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.getSize(
                              mobile: 16,
                              tablet: 32,
                              desktop: 48,
                            ),
                            vertical: 0,
                          ),
                          sliver: _buildMobileLayout(context),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SliverAppBar(
      expandedHeight: context.getSize(
        mobile: 100,
        tablet: 150,
        desktop: 180,
      ),
      collapsedHeight: context.getSize(
        mobile: 80.0,
        tablet: 80.0,
        desktop: 100.0,
      ),
      floating: false,
      pinned: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.only(
          bottom: context.getSize(mobile: 20, desktop: 24),
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

  Widget _buildGreetingSection(BuildContext context) {
    return FadeTransition(
      opacity: _fadeController,
      child: Container(
        padding: EdgeInsets.all(
          context.getSize(mobile: 20, desktop: 24),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red.withValues(alpha: 0.2),
              Colors.green.withValues(alpha: 0.2),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
        child: Column(
          children: [
            AppText(
              '🎄 Chúc Mừng Giáng Sinh 🎄',
              style: GoogleFonts.openSans(
                fontSize: context.getSize(
                  mobile: 20,
                  tablet: 24,
                  desktop: 28,
                ),
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.getSize(mobile: 8, desktop: 12)),
            AppText(
              'Wishing you a joyful Christmas filled with love, peace, and happiness!',
              style: GoogleFonts.openSans(
                fontSize: context.getSize(mobile: 14, desktop: 16),
                color: Colors.white.withValues(alpha: 0.9),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        // Greeting section
        _buildGreetingSection(context),

        SizedBox(height: context.getSize(mobile: 24, desktop: 40)),

        // Christmas tree section
        _buildTreeSection(context),

        SizedBox(height: context.getSize(mobile: 24, desktop: 40)),

        const FlipGreetingCard(),

        SizedBox(height: context.getSize(mobile: 24, desktop: 40)),

        // Gifts section
        _buildGiftsSection(context),

        SizedBox(height: context.getSize(mobile: 24, desktop: 40)),

        // Lights section
        _buildLightsSection(context),

        SizedBox(height: context.getSize(mobile: 24, desktop: 40)),

        // Message section
        _buildMessageSection(context),

        SizedBox(height: 32),
      ]),
    );
  }

  Widget _buildDesktopNoScrollLayout(BuildContext context) {
    return Column(
      children: [
        // Header - fixed at top
        _buildDesktopHeader(context),

        // Main content - takes remaining space
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Một tấm thẻ có thể lật được, mỗi lần lật sẽ tạo hiển thị một Content khác nhau
                  // Trước mắt hiển thị một tấm thẻ với nội dung là một lời chúc, sau đó chúng ta sẽ thay đổi sau
                  // FlipGreetingCard với tỷ lệ 16:9, chiều cao lấy maximum của content
                  const Expanded(
                    child: Row(
                      children: [
                        AspectRatio(
                          aspectRatio: 9 / 16,
                          child: FlipGreetingCard(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 48),

                  _buildTreeSection(context),

                  // Tree section - takes remaining space
                ],
              ),
            ),
          ),
        ),

        // Lights section - fixed at bottom
        _buildLightsSection(context),
      ],
    );
  }

  Widget _buildDesktopHeader(BuildContext context) {
    return SizedBox(
      height: context.getSize(mobile: 120, desktop: 180, smallDesktop: 140),
      child: Center(
        child: AnimatedBuilder(
          animation: _iconPulseController,
          builder: (context, child) {
            return Image.asset('assets/images/header_text.png',
                height: context.getSize(
                    mobile: 100, desktop: 120, smallDesktop: 100));
          },
        ),
      ),
    );
  }

  Widget _buildTreeSection(BuildContext context) {
    final treeSize = context.getSize(
      mobile: 180.0,
      tablet: 220.0,
      desktop: 400.0,
      smallDesktop: 280.0,
    );

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0.3),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: _slideController,
        curve: const Interval(0.2, 1.0, curve: Curves.easeOutCubic),
      )),
      child: Container(
        padding: EdgeInsets.all(
          context.getSize(mobile: 20, tablet: 32, desktop: 0),
        ),
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

  Widget _buildGiftsSection(BuildContext context) {
    final giftSize = context.getSize(
      mobile: 70.0,
      tablet: 85.0,
      desktop: 110.0,
      smallDesktop: 100.0,
    );
    final crossAxisCount = context
        .getSize(
          mobile: 3.0,
          tablet: 4.0,
          desktop: 3.0,
          smallDesktop: 5.0,
        )
        .toInt();

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0.3),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: _slideController,
        curve: const Interval(0.3, 1.0, curve: Curves.easeOutCubic),
      )),
      child: Container(
        padding: EdgeInsets.all(
          context.getSize(mobile: 20, desktop: 32),
        ),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: Colors.red.withValues(alpha: 0.3),
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
                crossAxisSpacing: context.getSize(mobile: 12, desktop: 16),
                mainAxisSpacing: context.getSize(mobile: 12, desktop: 16),
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

  Widget _buildLightsSection(BuildContext context) {
    final lightCount = context
        .getSize(
          mobile: 5.0,
          tablet: 7.0,
          desktop: 15.0,
          smallDesktop: 9.0,
        )
        .toInt();

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0.3),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: _slideController,
        curve: const Interval(0.4, 1.0, curve: Curves.easeOutCubic),
      )),
      child: Container(
        padding: EdgeInsets.all(
          context.getSize(mobile: 20, desktop: 32, smallDesktop: 20),
        ),
        // decoration: BoxDecoration(
        //   color: Colors.white.withValues(alpha: 0.05),
        //   borderRadius: BorderRadius.circular(24),
        //   border: Border.all(
        //     color: Colors.yellow.withValues(alpha: 0.3),
        //     width: 2,
        //   ),
        // ),
        child: Column(
          children: [
            LightString(
              count: lightCount,
              spacing: context.getSize(
                mobile: 30,
                tablet: 40,
                desktop: 50,
                smallDesktop: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageSection(BuildContext context) {
    return FadeTransition(
      opacity: CurvedAnimation(
        parent: _fadeController,
        curve: const Interval(0.5, 1.0),
      ),
      child: Container(
        padding: EdgeInsets.all(
          context.getSize(mobile: 20, desktop: 32),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red.withValues(alpha: 0.3),
              Colors.green.withValues(alpha: 0.3),
            ],
          ),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.3),
            width: 2,
          ),
        ),
        child: Column(
          children: [
            AppText(
              '🎅 Ho Ho Ho! 🎅',
              style: GoogleFonts.openSans(
                fontSize: context.getSize(mobile: 24, desktop: 28),
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.getSize(mobile: 12, desktop: 16)),
            AppText(
              'May this Christmas bring you warmth, joy, and wonderful memories with your loved ones.',
              style: GoogleFonts.openSans(
                fontSize: context.getSize(mobile: 14, desktop: 16),
                color: Colors.white.withValues(alpha: 0.9),
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.getSize(mobile: 12, desktop: 16)),
            AppText(
              '✨ Merry Christmas & Happy New Year! ✨',
              style: GoogleFonts.openSans(
                fontSize: context.getSize(mobile: 16, desktop: 18),
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
