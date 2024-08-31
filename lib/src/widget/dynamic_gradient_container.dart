import 'package:flutter/material.dart';

class DynamicGradientContainer extends StatelessWidget {
  final List<Color>? colors;
  final List<double>? stops;
  final double angleDegrees;
  final double borderRadius;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;

  const DynamicGradientContainer({
    Key? key,
    this.colors,
    this.stops,
    this.angleDegrees = 0.0,
    this.borderRadius = 0.0,
    this.boxShadow,
    this.child,
    this.margin,
    this.padding,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors ??
                [
                  Colors.white.withOpacity(0.15),
                  Colors.white.withOpacity(0.06),
                ],
            stops: stops ?? const <double>[-0.0533, 1.1245],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.topEnd,
            transform: GradientRotation(angleDegrees * 3.14159 / 180),
          ),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: boxShadow,
          border: border),
      child: child,
    );
  }
}
