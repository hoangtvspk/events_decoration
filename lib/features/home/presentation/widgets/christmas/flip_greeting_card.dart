import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bui_bloc/core/utils/screen_size_extension.dart';
import '../../../business_logic/home_bloc.dart';
import '../card_fronts/front_1.dart';
import '../card_fronts/front_2.dart';
import '../card_fronts/front_3.dart';
import '../card_fronts/front_4.dart';
import '../card_fronts/front_5.dart';

class FlipGreetingCard extends StatefulWidget {
  const FlipGreetingCard({super.key});

  @override
  State<FlipGreetingCard> createState() => _FlipGreetingCardState();
}

class _FlipGreetingCardState extends State<FlipGreetingCard>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late AnimationController _arrowController;
  late Animation<double> _arrowAnimation;
  late Animation<double> _arrowOpacityAnimation;
  late AnimationController _shadowController;
  late Animation<double> _shadowAnimation;
  late AnimationController _disappearController;
  late Animation<double> _disappearAnimation;
  double _dragStartX = 0.0;
  bool _isDragging = false;
  bool _isFlippingBackward = false; // Track flip direction
  bool _hasStartedDragging = false; // Track nếu đã bắt đầu kéo
  bool _isCompleted = false; // Track nếu đã hoàn thành (về thẻ 1 từ thẻ cuối)

  // 5 mặt front khác nhau
  final List<Widget Function(BuildContext)> _frontBuilders = [
    (context) => const Front1(),
    (context) => const Front2(),
    (context) => const Front3(),
    (context) => const Front4(),
    (context) => const Front5(),
  ];

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

    // Arrow animation controller - di chuyển gấu từ phải sang trái
    _arrowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000), // 2 giây để di chuyển
    );
    // Animation cho vị trí gấu: từ 0 (phải) đến 0.9 (90% từ phải)
    _arrowAnimation = Tween<double>(begin: 0.0, end: 0.9).animate(
      CurvedAnimation(
        parent: _arrowController,
        curve: Curves.easeInOut,
      ),
    );
    // Animation cho opacity: fade in đầu, fade out khi đến 90%
    _arrowOpacityAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.0, end: 1.0)
            .chain(CurveTween(curve: Curves.easeIn)),
        weight: 0.1, // 10% đầu fade in
      ),
      TweenSequenceItem(
        tween: ConstantTween<double>(1.0),
        weight: 0.7, // 70% giữa giữ opacity = 1
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 0.0)
            .chain(CurveTween(curve: Curves.easeOut)),
        weight: 0.2, // 20% cuối fade out
      ),
    ]).animate(_arrowController);

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

    // Disappear animation controller - thu nhỏ card khi hoàn thành
    _disappearController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _disappearAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _disappearController,
        curve: Curves.easeIn,
      ),
    );

    // Start arrow animation cycle
    _startArrowAnimationCycle();
  }

  void _startArrowAnimationCycle() {
    // Chờ 2s rồi hiển thị và di chuyển gấu
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted && !_hasStartedDragging) {
        _arrowController.forward().then((_) {
          // Sau khi animation xong, chờ 3s rồi lặp lại
          if (mounted && !_hasStartedDragging) {
            _arrowController.reset();
            Future.delayed(const Duration(seconds: 2), () {
              if (mounted && !_hasStartedDragging) {
                _startArrowAnimationCycle();
              }
            });
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _arrowController.dispose();
    _shadowController.dispose();
    _disappearController.dispose();
    super.dispose();
  }

  void _flipForward() {
    // Swipe từ phải sang trái: lật từ phải sang trái → nội dung tiếp theo
    if (_controller.isAnimating || _isCompleted) return;

    final currentIndex = context.read<HomeBloc>().state.greetingCardIndex;
    // Kiểm tra nếu đang ở thẻ cuối và sẽ về thẻ 1
    final isLastCard = currentIndex == _frontBuilders.length - 1;

    setState(() {
      _isFlippingBackward = false;
    });

    // Start shadow animation cùng lúc với flip
    _shadowController.forward();

    _controller.forward().then((_) {
      // Update index trong BLoC
      context.read<HomeBloc>().add(
            HomeEvent.flipGreetingCardForward(_frontBuilders.length),
          );

      final newIndex = (currentIndex + 1) % _frontBuilders.length;

      setState(() {
        _controller.value = 0.0;
        _isFlippingBackward = false;

        // Nếu đã về thẻ 1 từ thẻ cuối, đánh dấu hoàn thành và bắt đầu animation thu nhỏ
        if (isLastCard && newIndex == 0) {
          _isCompleted = true;
        }
      });

      // Shadow animation mượt về 0 sau khi flip xong
      _shadowController.reverse().then((_) {
        _shadowController.value = 0.0;
      });

      // Nếu đã hoàn thành, bắt đầu animation thu nhỏ
      if (isLastCard && newIndex == 0) {
        _disappearController.forward();
      }
    });
  }

  void _flipBackward() {
    // Swipe từ trái sang phải: lật từ trái sang phải → nội dung trước đó
    // Không cho lật nếu đang ở thẻ đầu hoặc đã hoàn thành
    final currentIndex = context.read<HomeBloc>().state.greetingCardIndex;
    if (_controller.isAnimating || _isCompleted || currentIndex == 0) return;

    setState(() {
      _isFlippingBackward = true;
    });

    // Start shadow animation cùng lúc với flip
    _shadowController.forward();

    // Set controller về end state trước, rồi reverse
    _controller.value = 1.0;
    _controller.reverse().then((_) {
      // Update index trong BLoC
      context.read<HomeBloc>().add(
            HomeEvent.flipGreetingCardBackward(_frontBuilders.length),
          );

      setState(() {
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
        // Đánh dấu đã bắt đầu kéo và ẩn text hint
        if (!_hasStartedDragging) {
          setState(() {
            _hasStartedDragging = true;
          });
          _arrowController.stop();
          _arrowController.reset();
        }
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
    return AnimatedBuilder(
      animation: _disappearAnimation,
      builder: (context, child) {
        return Opacity(
          opacity: _disappearAnimation.value,
          child: Transform.scale(
            scale: _disappearAnimation.value,
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Kiểm tra nếu constraints có height bounded hay không
                final hasBoundedHeight =
                    constraints.maxHeight != double.infinity;

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Container 1: Card với flip animation
                    // Dùng Expanded nếu có bounded height, nếu không dùng SizedBox với height cụ thể
                    hasBoundedHeight
                        ? Expanded(
                            child: SizedBox(
                              width: constraints.maxWidth,
                              child: _buildCardStack(constraints),
                            ),
                          )
                        : SizedBox(
                            width: constraints.maxWidth,
                            height: constraints.maxWidth *
                                (16 / 9), // 16:9 aspect ratio
                            child: _buildCardStack(constraints),
                          ),
                    // Container 2: Shadow dưới chân card - height cố định
                    SizedBox(
                      width: constraints.maxWidth, // Lấy max width theo parent
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
                              width: constraints.maxWidth *
                                  0.75, // Shadow width dựa trên constraints
                              height: 20 + (shadowValue * 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(
                                        alpha: 0.5 - (shadowValue * 0.2)),
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
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildCardStack(BoxConstraints constraints) {
    return Stack(
      clipBehavior: Clip.none, // Không clip để hình không bị cắt
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
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

                return BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    final currentIndex = state.greetingCardIndex;
                    final isShowingCurrentFront = normalizedValue < 0.5;

                    // Tính toán mặt tiếp theo (forward) hoặc trước đó (backward)
                    final nextIndex =
                        (currentIndex + 1) % _frontBuilders.length;
                    final previousIndex =
                        (currentIndex - 1 + _frontBuilders.length) %
                            _frontBuilders.length;
                    final targetIndex =
                        _isFlippingBackward ? previousIndex : nextIndex;

                    return Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001) // Perspective
                        ..rotateY(angle),
                      child: isShowingCurrentFront
                          ? _frontBuilders[currentIndex](context)
                          : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.identity()..rotateY(3.14159),
                              child: _frontBuilders[targetIndex](context),
                            ),
                    );
                  },
                );
              },
            ),
          ),
        ),
        // Gấu di chuyển animation - hiển thị sau 2s, di chuyển từ phải sang trái
        if (!_hasStartedDragging)
          Positioned(
            right: 20,
            bottom: 50,
            child: AnimatedBuilder(
              animation: Listenable.merge([
                _arrowAnimation,
                _arrowOpacityAnimation,
              ]),
              builder: (context, child) {
                // Tính toán vị trí gấu: từ phải (right: 0) sang trái (right: 90% của container)
                // _arrowAnimation.value từ 0.0 đến 0.9
                // Khi value = 0.0: right = 0 (gấu ở bên phải)
                // Khi value = 0.9: right = 0.7 * width * 0.9 (gấu ở 90% từ phải)
                final bearPosition =
                    constraints.maxWidth * 0.7 * _arrowAnimation.value;

                return IgnorePointer(
                  child: Opacity(
                    opacity: _arrowOpacityAnimation.value,
                    child: Stack(
                      clipBehavior:
                          Clip.none, // Không clip để hình không bị cắt
                      children: [
                        // Slide bar
                        Container(
                          width: constraints.maxWidth * 0.7,
                          height: context.getSize(
                            mobile: 20,
                            desktop: 40,
                            smallDesktop: 30,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withValues(alpha: 0.0),
                                Colors.white.withValues(alpha: 0.5),
                                Colors.white,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: CustomPaint(
                            painter: _ArrowPainter(
                              color: Colors.white,
                              strokeWidth: context.getSize(
                                mobile: 2.0,
                                desktop: 3.0,
                                smallDesktop: 2.5,
                              ),
                            ),
                          ),
                        ),
                        // Gấu di chuyển từ phải sang trái
                        Positioned(
                          right: bearPosition,
                          top: 0,
                          child: Image.asset(
                            'assets/images/dudu_pointing.png',
                            height: context.getSize(
                              mobile: 50,
                              desktop: 70,
                              smallDesktop: 60,
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}

// Custom painter để vẽ mũi tên dài màu trắng
class _ArrowPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;

  _ArrowPainter({
    required this.color,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color.withOpacity(0.4) // Opacity 0.4
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    // Vẽ đường thẳng từ phải sang trái, dài 70% thanh slide
    // Mũi tên dài 70% của container, căn giữa
    final arrowLength = size.width * 0.6; // 70% chiều dài
    final startX = size.width * 0.85; // Bắt đầu từ 85% bên phải
    final startY = size.height / 2;
    final endX =
        startX - arrowLength; // Kết thúc cách startX một khoảng = 70% width
    final endY = size.height / 2;

    // Vẽ đường thẳng chính
    canvas.drawLine(
      Offset(startX, startY),
      Offset(endX, endY),
      paint,
    );

    // Vẽ đầu mũi tên (tam giác)
    final arrowheadSize = strokeWidth * 3;
    final arrowheadPath = Path();
    arrowheadPath.moveTo(endX, endY);
    arrowheadPath.lineTo(
      endX + arrowheadSize,
      endY - arrowheadSize * 0.6,
    );
    arrowheadPath.lineTo(
      endX + arrowheadSize * 0.5,
      endY,
    );
    arrowheadPath.lineTo(
      endX + arrowheadSize,
      endY + arrowheadSize * 0.6,
    );
    arrowheadPath.close();

    // Vẽ đầu mũi tên
    final arrowheadPaint = Paint()
      ..color = color.withOpacity(0.4) // Opacity 0.4
      ..style = PaintingStyle.fill;
    canvas.drawPath(arrowheadPath, arrowheadPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
