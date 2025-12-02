import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/home_bloc.dart';

class CategoryFilterChips extends StatelessWidget {
  const CategoryFilterChips({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final categories = [
          'All',
          'Learning',
          'Development',
          'Design',
          'Personal',
          'Work'
        ];

        return SizedBox(
          height: 50,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
                PointerDeviceKind.trackpad,
              },
              scrollbars: false,
            ),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const BouncingScrollPhysics(),
              itemCount: categories.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final category = categories[index];
                final isSelected = state.selectedCategory == category;
                final tasksInCategory = category == 'All'
                    ? state.tasks.length
                    : state.tasks.where((t) => t.category == category).length;

                return _CategoryChip(
                  category: category,
                  isSelected: isSelected,
                  count: tasksInCategory,
                  onTap: () {
                    context.read<HomeBloc>().add(
                          HomeEvent.changeCategory(category),
                        );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class _CategoryChip extends StatefulWidget {
  final String category;
  final bool isSelected;
  final int count;
  final VoidCallback onTap;

  const _CategoryChip({
    required this.category,
    required this.isSelected,
    required this.count,
    required this.onTap,
  });

  @override
  State<_CategoryChip> createState() => _CategoryChipState();
}

class _CategoryChipState extends State<_CategoryChip>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Color _getCategoryColor() {
    switch (widget.category) {
      case 'Learning':
        return const Color(0xFF3B82F6);
      case 'Development':
        return const Color(0xFF8B5CF6);
      case 'Design':
        return const Color(0xFFEC4899);
      case 'Personal':
        return const Color(0xFF10B981);
      case 'Work':
        return const Color(0xFFF59E0B);
      default:
        return const Color(0xFF6B7280);
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getCategoryColor();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTapDown: (_) => _controller.forward(),
        onTapUp: (_) {
          _controller.reverse();
          widget.onTap();
        },
        onTapCancel: () => _controller.reverse(),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final scale = 1.0 - (_controller.value * 0.05);
            return Transform.scale(
              scale: scale,
              child: child,
            );
          },
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: widget.isSelected ? 1.0 : 0.0),
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  gradient: widget.isSelected
                      ? LinearGradient(
                          colors: [
                            color,
                            color.withValues(alpha: 0.7),
                          ],
                        )
                      : null,
                  color: widget.isSelected
                      ? null
                      : Colors.white.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: widget.isSelected
                        ? color
                        : Colors.white.withValues(alpha: 0.2),
                    width: widget.isSelected ? 2 : 1,
                  ),
                  boxShadow: widget.isSelected
                      ? [
                          BoxShadow(
                            color: color.withValues(alpha: 0.4),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ]
                      : null,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.category,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: widget.isSelected
                            ? FontWeight.w600
                            : FontWeight.w500,
                        color:
                            widget.isSelected ? Colors.white : Colors.white70,
                      ),
                    ),
                    if (widget.count > 0) ...[
                      const SizedBox(width: 8),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: widget.isSelected
                              ? Colors.white.withValues(alpha: 0.2)
                              : color.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          widget.count.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: widget.isSelected ? Colors.white : color,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
