import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/home_bloc.dart';

class TaskCard extends StatefulWidget {
  final Task task;
  final int index;

  const TaskCard({
    super.key,
    required this.task,
    required this.index,
  });

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.3, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOutCubic),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOutBack),
      ),
    );

    // Stagger animation based on index
    Future.delayed(Duration(milliseconds: widget.index * 100), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleDelete() {
    _controller.reverse().then((_) {
      if (mounted) {
        context.read<HomeBloc>().add(HomeEvent.deleteTask(widget.task.id));
      }
    });
  }

  Color _getCategoryColor() {
    switch (widget.task.category) {
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
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: Dismissible(
            key: Key(widget.task.id),
            direction: DismissDirection.endToStart,
            onDismissed: (_) => _handleDelete(),
            background: Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: Colors.red.shade400,
                borderRadius: BorderRadius.circular(16),
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 24),
              child: const Icon(
                Icons.delete_outline,
                color: Colors.white,
                size: 28,
              ),
            ),
            child: _buildTaskCard(context),
          ),
        ),
      ),
    );
  }

  Widget _buildTaskCard(BuildContext context) {
    final categoryColor = _getCategoryColor();

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: widget.task.isCompleted
              ? const Color(0xFF34D399).withValues(alpha: 0.3)
              : categoryColor.withValues(alpha: 0.3),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: categoryColor.withValues(alpha: 0.1),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            context
                .read<HomeBloc>()
                .add(HomeEvent.toggleTaskCompletion(widget.task.id));
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Checkbox with animation
                _buildAnimatedCheckbox(context),
                const SizedBox(width: 16),

                // Task content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.task.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: widget.task.isCompleted
                              ? Colors.white.withValues(alpha: 0.5)
                              : Colors.white,
                          decoration: widget.task.isCompleted
                              ? TextDecoration.lineThrough
                              : null,
                          decorationColor: Colors.white.withValues(alpha: 0.5),
                          decorationThickness: 2,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: categoryColor.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: categoryColor.withValues(alpha: 0.4),
                              ),
                            ),
                            child: Text(
                              widget.task.category,
                              style: TextStyle(
                                fontSize: 12,
                                color: categoryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Delete button
                IconButton(
                  icon: const Icon(
                    Icons.delete_outline,
                    color: Colors.white54,
                    size: 20,
                  ),
                  onPressed: _handleDelete,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedCheckbox(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: widget.task.isCompleted ? 1.0 : 0.0),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutBack,
      builder: (context, value, child) {
        final color = Color.lerp(
          const Color(0xFF4B5563),
          const Color(0xFF34D399),
          value,
        )!;
        
        return Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.2),
            shape: BoxShape.circle,
            border: Border.all(
              color: color,
              width: 2,
            ),
          ),
          child: Transform.scale(
            scale: value,
            child: const Icon(
              Icons.check,
              color: Color(0xFF34D399),
              size: 18,
            ),
          ),
        );
      },
    );
  }
}
