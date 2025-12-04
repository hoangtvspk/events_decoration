import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bui_bloc/core/utils/screen_size_extension.dart';
import 'animated_card_front_text.dart';
import 'card_front_text.dart';
import '../../../business_logic/home_bloc.dart';

class Front3 extends StatelessWidget {
  const Front3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage('assets/images/embe_4.png'),
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
                            .withValues(alpha: 0.8),
                        const Color.fromARGB(255, 79, 92, 98)
                            .withValues(alpha: 0.2),
                        Colors.transparent,
                      ],
                      stops: const [0.0, 0.3, 1.0],
                    ),
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(context.getSize(
                              mobile: 20, desktop: 30, smallDesktop: 20)),
                          child: Column(
                            children: [
                              Icon(
                                Icons.star,
                                size: context.getSize(
                                    mobile: 30,
                                    desktop: 60,
                                    mediumDesktop: 40,
                                    smallDesktop: 30),
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withValues(alpha: 0.4),
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
                                      'Chúc em bé một mùa Noel cùng với trái tim được sưởi ấm, bên cạnh luôn có người thân thương, có gia đình, có bạn bè, và có anh!';
                                  // Khi maxReachedCardIndex > frontIndex (đã từng lật qua thẻ tiếp theo),
                                  // đổi vĩnh viễn sang CardFrontText
                                  // maxReachedCardIndex chỉ tăng, không bao giờ giảm
                                  if (state.maxReachedCardIndex > 2) {
                                    return const CardFrontText(
                                      text: text,
                                    );
                                  }
                                  return AnimatedCardFrontText(
                                    key: const ValueKey('front3'),
                                    text: text,
                                    cardIndex: state.greetingCardIndex,
                                    frontIndex:
                                        2, // Front3 tương ứng với index 2
                                  );
                                },
                              ),
                            ],
                          )),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
