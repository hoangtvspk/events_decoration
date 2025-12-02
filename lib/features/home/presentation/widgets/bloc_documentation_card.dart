import 'package:flutter/material.dart';
import 'package:bui_bloc/core/widgets/text/text.dart';

class BlocDocumentationCard extends StatefulWidget {
  final List<String> features;

  const BlocDocumentationCard({
    super.key,
    required this.features,
  });

  @override
  State<BlocDocumentationCard> createState() => _BlocDocumentationCardState();
}

class _BlocDocumentationCardState extends State<BlocDocumentationCard> {
  int _selectedTab = 0;

  final List<Map<String, dynamic>> _tabs = [
    {
      'title': 'Overview',
      'icon': Icons.info_outline,
    },
    {
      'title': 'Benefits',
      'icon': Icons.star_outline,
    },
    {
      'title': 'Flow',
      'icon': Icons.account_tree_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF6366F1).withValues(alpha: 0.3),
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF8B5CF6), Color(0xFF6366F1)],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.school_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        'BLoC Documentation',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      AppText(
                        'Business Logic Component',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Tab Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: _tabs.asMap().entries.map((entry) {
                  final index = entry.key;
                  final tab = entry.value;
                  final isSelected = _selectedTab == index;

                  return Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => _selectedTab = index),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF8B5CF6).withValues(alpha: 0.3)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border: isSelected
                              ? Border.all(
                                  color: const Color(0xFF8B5CF6),
                                  width: 1.5,
                                )
                              : null,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              tab['icon'] as IconData,
                              size: 18,
                              color: isSelected
                                  ? Colors.white
                                  : Colors.white54,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              tab['title'] as String,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: isSelected
                                    ? FontWeight.w600
                                    : FontWeight.w500,
                                color: isSelected
                                    ? Colors.white
                                    : Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Content
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0.1, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  ),
                );
              },
              child: _buildContent(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    switch (_selectedTab) {
      case 0:
        return _buildOverview();
      case 1:
        return _buildBenefits();
      case 2:
        return _buildFlow();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildOverview() {
    return Column(
      key: const ValueKey('overview'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('What is BLoC?'),
        const SizedBox(height: 12),
        _buildParagraph(
          'BLoC (Business Logic Component) is a design pattern created by Google '
          'to separate business logic from the presentation layer in Flutter applications.',
        ),
        const SizedBox(height: 16),
        _buildSectionTitle('Core Concepts'),
        const SizedBox(height: 12),
        _buildConceptItem(
          'Events',
          'Input to the BLoC - user actions or system events',
          Icons.input,
          const Color(0xFF3B82F6),
        ),
        const SizedBox(height: 8),
        _buildConceptItem(
          'States',
          'Output from the BLoC - UI representation data',
          Icons.widgets,
          const Color(0xFF8B5CF6),
        ),
        const SizedBox(height: 8),
        _buildConceptItem(
          'Streams',
          'Connect Events to States reactively',
          Icons.stream,
          const Color(0xFFEC4899),
        ),
      ],
    );
  }

  Widget _buildBenefits() {
    return Column(
      key: const ValueKey('benefits'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Key Features'),
        const SizedBox(height: 12),
        ...widget.features.asMap().entries.map((entry) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _buildFeatureItem(entry.value, entry.key),
          );
        }),
      ],
    );
  }

  Widget _buildFlow() {
    return Column(
      key: const ValueKey('flow'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('BLoC Flow Diagram'),
        const SizedBox(height: 16),
        _buildFlowItem(
          '1',
          'UI Layer',
          'User interaction triggers an event',
          const Color(0xFF3B82F6),
        ),
        _buildFlowArrow(),
        _buildFlowItem(
          '2',
          'BLoC Layer',
          'Event is processed, business logic executes',
          const Color(0xFF8B5CF6),
        ),
        _buildFlowArrow(),
        _buildFlowItem(
          '3',
          'State Layer',
          'New state is emitted',
          const Color(0xFFEC4899),
        ),
        _buildFlowArrow(),
        _buildFlowItem(
          '4',
          'UI Layer',
          'UI rebuilds with new state',
          const Color(0xFF10B981),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return AppText(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return AppText(
      text,
      style: TextStyle(
        fontSize: 14,
        color: Colors.white.withValues(alpha: 0.7),
        height: 1.5,
      ),
    );
  }

  Widget _buildConceptItem(
    String title,
    String description,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
                ),
                const SizedBox(height: 2),
                AppText(
                  description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(String text, int index) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(milliseconds: 300 + (index * 100)),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(20 * (1 - value), 0),
            child: child,
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6),
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
              color: Color(0xFF8B5CF6),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: AppText(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withValues(alpha: 0.8),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFlowItem(
    String number,
    String title,
    String description,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.withValues(alpha: 0.3),
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: AppText(
                number,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
                ),
                const SizedBox(height: 4),
                AppText(
                  description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFlowArrow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Icon(
          Icons.arrow_downward,
          color: Colors.white.withValues(alpha: 0.3),
          size: 24,
        ),
      ),
    );
  }
}
