import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    Key? key,
    this.color,
    this.onPressed,
  }) : super(key: key);
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    return IconButton(
      icon: const Icon(Icons.close),
      color: color ?? colorScheme.background,
      iconSize: 24,
      padding: EdgeInsets.zero,
      tooltip: MaterialLocalizations.of(context).backButtonTooltip,
      onPressed: onPressed ??
          () {
            Navigator.maybePop(context);
          },
    );
  }
}
