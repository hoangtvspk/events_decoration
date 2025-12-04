import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bui_bloc/core/utils/screen_size_extension.dart';
import 'animated_card_front_text.dart';
import 'card_front_text.dart';
import '../../../business_logic/home_bloc.dart';

class Front2 extends StatelessWidget {
  const Front2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage('assets/images/front_2_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color.fromARGB(255, 79, 92, 98)
                            .withValues(alpha: 0.9),
                        const Color.fromARGB(255, 79, 92, 98)
                            .withValues(alpha: 0.6),
                        Colors.transparent,
                      ],
                      stops: const [0.0, 0.3, 1.0],
                    ),
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(context.getSize(
                                mobile: 20, desktop: 30, smallDesktop: 20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.ac_unit,
                                  size: context.getSize(
                                      mobile: 30,
                                      desktop: 60,
                                      mediumDesktop: 40,
                                      smallDesktop: 30),
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color:
                                          Colors.black.withValues(alpha: 0.4),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: context.getSize(
                                        mobile: 10,
                                        desktop: 20,
                                        mediumDesktop: 12,
                                        smallDesktop: 10)),
                                BlocBuilder<HomeBloc, HomeState>(
                                  builder: (context, state) {
                                    const text =
                                        'Giáng sinh an lành, em bé!\nMong cho mọi điều dịu dàng nhất sẽ tới với em, và cô gái của anh sẽ luôn được hạnh phúc và yên bình!';
                                    // Khi maxReachedCardIndex > frontIndex (đã từng lật qua thẻ tiếp theo),
                                    // đổi vĩnh viễn sang CardFrontText
                                    // maxReachedCardIndex chỉ tăng, không bao giờ giảm
                                    if (state.maxReachedCardIndex > 1) {
                                      return const CardFrontText(
                                        text: text,
                                      );
                                    }
                                    return AnimatedCardFrontText(
                                      key: const ValueKey('front2'),
                                      duration:
                                          const Duration(milliseconds: 4000),
                                      text: text,
                                      cardIndex: state.greetingCardIndex,
                                      frontIndex:
                                          1, // Front2 tương ứng với index 1
                                    );
                                  },
                                ),
                              ],
                            )),
                        // width 30% of the container
                      ],
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Image.asset(
                        'assets/images/embe_6.png',
                        width: context.getSize(
                            mobile: constraints.maxWidth * 0.5,
                            desktop: constraints.maxWidth * 0.5),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
