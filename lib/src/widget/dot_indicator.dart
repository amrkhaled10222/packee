import 'package:flutter/material.dart';
import 'package:packeee/src/helper/context_extension.dart';

class DotIndicator extends StatelessWidget {
  final int index;
  final int currentPageindex;

  const DotIndicator({
    super.key,
    required this.index,
    required this.currentPageindex,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: 20,
      decoration: BoxDecoration(
        color: currentPageindex == index
            ? context.theme.colorScheme.background
            : context.theme.colorScheme.error,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
