import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bui_bloc/core/widgets/text/text.dart';

class FlipGreetingCard extends StatefulWidget {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;

  const FlipGreetingCard({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.isDesktop,
  });

  @override
  State<FlipGreetingCard> createState() => _FlipGreetingCardState();
}

class _FlipGreetingCardState extends State<FlipGreetingCard>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late AnimationController _arrowController;
  late Animation<double> _arrowAnimation;
  late AnimationController _shadowController;
  late Animation<double> _shadowAnimation;
  int _currentIndex = 0;
  double _dragStartX = 0.0;
  bool _isDragging = false;
  bool _isFlippingBackward = false; // Track flip direction

  // 5 mặt front khác nhau
  final List<Widget Function(bool, bool, bool)> _frontBuilders = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Arrow animation controller - hiện mỗi 10s
    _arrowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _arrowAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _arrowController,
        curve: Curves.easeOut,
      ),
    );

    // Shadow animation controller - mượt hơn và không reset đột ngột
    _shadowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _shadowAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _shadowController,
        curve: Curves.easeInOut,
      ),
    );

    // Initialize front builders
    _frontBuilders.addAll([
      _buildFront1,
      _buildFront2,
      _buildFront3,
      _buildFront4,
      _buildFront5,
    ]);

    // Start arrow animation cycle
    _startArrowAnimationCycle();
  }

  void _startArrowAnimationCycle() {
    // Chờ 10s rồi chạy animation
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted) {
        _arrowController.forward().then((_) {
          _arrowController.reset();
          // Lặp lại cycle
          _startArrowAnimationCycle();
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _arrowController.dispose();
    _shadowController.dispose();
    super.dispose();
  }

  void _flipForward() {
    // Swipe từ phải sang trái: lật từ phải sang trái → nội dung tiếp theo
    if (_controller.isAnimating) return;

    setState(() {
      _isFlippingBackward = false;
    });

    // Start shadow animation cùng lúc với flip
    _shadowController.forward();

    _controller.forward().then((_) {
      // Update index và reset trong cùng một setState
      setState(() {
        _currentIndex = (_currentIndex + 1) % _frontBuilders.length;
        _controller.value = 0.0;
        _isFlippingBackward = false;
      });

      // Shadow animation mượt về 0 sau khi flip xong
      _shadowController.reverse().then((_) {
        _shadowController.value = 0.0;
      });
    });
  }

  void _flipBackward() {
    // Swipe từ trái sang phải: lật từ trái sang phải → nội dung trước đó
    if (_controller.isAnimating) return;

    setState(() {
      _isFlippingBackward = true;
    });

    // Start shadow animation cùng lúc với flip
    _shadowController.forward();

    // Set controller về end state trước, rồi reverse
    _controller.value = 1.0;
    _controller.reverse().then((_) {
      // Update index và reset trong cùng một setState
      setState(() {
        _currentIndex =
            (_currentIndex - 1 + _frontBuilders.length) % _frontBuilders.length;
        _controller.value = 0.0;
        _isFlippingBackward = false;
      });

      // Shadow animation mượt về 0 sau khi flip xong
      _shadowController.reverse().then((_) {
        _shadowController.value = 0.0;
      });
    });
  }

  void _onPanStart(DragStartDetails details) {
    _dragStartX = details.globalPosition.dx;
    _isDragging = true;
  }

  void _onPanUpdate(DragUpdateDetails details) {
    if (!_isDragging || _controller.isAnimating) return;

    final deltaX = details.globalPosition.dx - _dragStartX;
    final threshold = 50.0; // Minimum drag distance to trigger flip

    if (deltaX.abs() > threshold) {
      _isDragging = false;
      if (deltaX < 0) {
        // Swipe từ phải sang trái (kéo sang trái)
        _flipForward();
      } else {
        // Swipe từ trái sang phải (kéo sang phải)
        _flipBackward();
      }
    }
  }

  void _onPanEnd(DragEndDetails details) {
    _isDragging = false;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.isMobile
          ? 280
          : widget.isTablet
              ? 350
              : 400,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Container 1: Card với flip animation
          SizedBox(
            height: widget.isMobile
                ? 400
                : widget.isTablet
                    ? 500
                    : 600,
            child: Stack(
              children: [
                GestureDetector(
                  onPanStart: _onPanStart,
                  onPanUpdate: _onPanUpdate,
                  onPanEnd: _onPanEnd,
                  child: AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      // Dùng flag _isFlippingBackward thay vì check controller status
                      // để tránh race condition khi animation hoàn thành
                      final normalizedValue = _isFlippingBackward
                          ? 1.0 - _animation.value
                          : _animation.value;

                      // Để lật từ trái sang phải khi backward, cần đảo ngược góc rotateY
                      final angle = _isFlippingBackward
                          ? -normalizedValue *
                              3.14159 // Negative angle để lật ngược lại
                          : normalizedValue *
                              3.14159; // Positive angle để lật từ phải sang trái

                      final isShowingCurrentFront = normalizedValue < 0.5;

                      // Tính toán mặt tiếp theo (forward) hoặc trước đó (backward)
                      final nextIndex =
                          (_currentIndex + 1) % _frontBuilders.length;
                      final previousIndex =
                          (_currentIndex - 1 + _frontBuilders.length) %
                              _frontBuilders.length;
                      final targetIndex =
                          _isFlippingBackward ? previousIndex : nextIndex;

                      return Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001) // Perspective
                          ..rotateY(angle),
                        child: isShowingCurrentFront
                            ? _frontBuilders[_currentIndex](widget.isMobile,
                                widget.isTablet, widget.isDesktop)
                            : Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.identity()..rotateY(3.14159),
                                child: _frontBuilders[targetIndex](
                                    widget.isMobile,
                                    widget.isTablet,
                                    widget.isDesktop),
                              ),
                      );
                    },
                  ),
                ),
                // Arrow hint animation - bay từ phải sang trái rồi biến mất
                Positioned.fill(
                  child: AnimatedBuilder(
                    animation: _arrowAnimation,
                    builder: (context, child) {
                      // Opacity: fade in đầu, fade out cuối
                      final opacity = _arrowAnimation.value < 0.2
                          ? _arrowAnimation.value / 0.2
                          : _arrowAnimation.value > 0.8
                              ? (1.0 - _arrowAnimation.value) / 0.2
                              : 1.0;

                      // Offset: bay từ phải (0) sang trái (âm)
                      final offsetX = -(_arrowAnimation.value * 150);

                      return IgnorePointer(
                        child: Opacity(
                          opacity: opacity,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Transform.translate(
                              offset: Offset(offsetX, 0),
                              child: CustomPaint(
                                size: const Size(80, 40),
                                painter: _SwooshArrowPainter(),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // Container 2: Shadow dưới chân card
          SizedBox(
            height: 50, // Cố định height để không làm card nhảy
            child: AnimatedBuilder(
              animation: _shadowAnimation,
              builder: (context, child) {
                // Shadow animation mượt hơn, không reset đột ngột
                final shadowValue = _shadowAnimation.value;

                return Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 10 + (shadowValue * 5),
                    ),
                    width: widget.isMobile
                        ? 200
                        : widget.isTablet
                            ? 250
                            : 300,
                    height: 20 + (shadowValue * 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black
                              .withOpacity(0.5 - (shadowValue * 0.2)),
                          blurRadius: 30 + (shadowValue * 20),
                          spreadRadius: 5 + (shadowValue * 5),
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // Front 1: Classic Red & Green
  Widget _buildFront1(bool isMobile, bool isTablet, bool isDesktop) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red.shade700,
            Colors.green.shade700,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red.shade600,
                Colors.green.shade600,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.card_giftcard,
                size: isMobile ? 60 : 80,
                color: Colors.white,
              ),
              const SizedBox(height: 24),
              AppText(
                'Merry Christmas',
                style: GoogleFonts.playfairDisplay(
                  fontSize: isMobile ? 28 : 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Front 2: Gold & White Elegant
  Widget _buildFront2(bool isMobile, bool isTablet, bool isDesktop) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.amber.shade700,
            Colors.amber.shade900,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.amber.shade600,
                Colors.orange.shade700,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: isMobile ? 50 : 60,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
              AppText(
                'May your Christmas be filled with warmth, laughter, and love!',
                style: GoogleFonts.openSans(
                  fontSize: isMobile ? 16 : 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Front 3: Blue & Silver Winter
  Widget _buildFront3(bool isMobile, bool isTablet, bool isDesktop) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue.shade700,
            Colors.blue.shade900,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue.shade600,
                Colors.indigo.shade700,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.ac_unit,
                size: isMobile ? 50 : 60,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
              AppText(
                'Sending you warmest wishes for a wonderful Christmas!',
                style: GoogleFonts.openSans(
                  fontSize: isMobile ? 16 : 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Front 4: Purple & Pink Magical
  Widget _buildFront4(bool isMobile, bool isTablet, bool isDesktop) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.purple.shade700,
            Colors.pink.shade700,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.purple.shade600,
                Colors.pink.shade600,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.auto_awesome,
                size: isMobile ? 50 : 60,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
              AppText(
                'May the magic of Christmas fill your heart with joy!',
                style: GoogleFonts.openSans(
                  fontSize: isMobile ? 16 : 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Front 5: Green & Gold Traditional
  Widget _buildFront5(bool isMobile, bool isTablet, bool isDesktop) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.green.shade800,
            Colors.green.shade600,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green.shade700,
                Colors.teal.shade700,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.eco,
                size: isMobile ? 50 : 60,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
              AppText(
                'Wishing you peace, happiness, and prosperity in the coming year!',
                style: GoogleFonts.openSans(
                  fontSize: isMobile ? 16 : 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  // Back: Lời chúc (không dùng nữa, nhưng giữ lại để có thể dùng sau)
  // ignore: unused_element
  Widget _buildBack(bool isMobile, bool isTablet, bool isDesktop) {
    const message =
        'Wishing you joy, peace, and happiness this Christmas season! 🎄';

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.green.shade700,
            Colors.red.shade700,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green.shade600,
                Colors.red.shade600,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: isMobile ? 50 : 60,
                color: Colors.yellow.shade300,
              ),
              const SizedBox(height: 24),
              AppText(
                message,
                style: GoogleFonts.openSans(
                  fontSize: isMobile ? 16 : 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              AppText(
                '🎄 Chúc Mừng Giáng Sinh 🎄',
                style: GoogleFonts.openSans(
                  fontSize: isMobile ? 18 : 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom painter cho mũi tên swoosh
class _SwooshArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);

    final path = Path();
    final startX = size.width * 0.1;
    final startY = size.height * 0.5;
    final endX = size.width * 0.9;
    final endY = size.height * 0.5;
    final controlPoint1X = size.width * 0.3;
    final controlPoint1Y = size.height * 0.2;
    final controlPoint2X = size.width * 0.7;
    final controlPoint2Y = size.height * 0.8;

    // Vẽ đường cong swoosh
    path.moveTo(startX, startY);
    path.cubicTo(
      controlPoint1X,
      controlPoint1Y,
      controlPoint2X,
      controlPoint2Y,
      endX,
      endY,
    );

    // Vẽ shadow trước
    canvas.save();
    canvas.translate(1, 1);
    canvas.drawPath(path, shadowPaint);
    canvas.restore();

    // Vẽ arrow chính
    canvas.drawPath(path, paint);

    // Vẽ arrowhead
    final arrowheadSize = 8.0;
    final arrowheadPath = Path();
    arrowheadPath.moveTo(endX, endY);
    arrowheadPath.lineTo(
      endX - arrowheadSize,
      endY - arrowheadSize * 0.6,
    );
    arrowheadPath.lineTo(
      endX - arrowheadSize * 0.5,
      endY,
    );
    arrowheadPath.lineTo(
      endX - arrowheadSize,
      endY + arrowheadSize * 0.6,
    );
    arrowheadPath.close();

    // Vẽ shadow cho arrowhead
    canvas.save();
    canvas.translate(1, 1);
    canvas.drawPath(arrowheadPath, shadowPaint);
    canvas.restore();

    // Vẽ arrowhead chính
    final arrowheadPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawPath(arrowheadPath, arrowheadPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
