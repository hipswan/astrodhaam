import 'package:astrodhaam/component/hex_color.dart';
import 'package:flutter/material.dart';

class CustomSliderThumbRect extends SliderComponentShape {
  final double thumbRadius;
  final thumbHeight;
  final int min;
  final int max;

  const CustomSliderThumbRect({
    this.thumbRadius = 0,
    this.thumbHeight,
    this.min = 0,
    this.max = 0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    SliderThemeData? sliderTheme,
    TextDirection? textDirection,
    double? value,
    double? textScaleFactor,
    Size? sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final rRect = RRect.fromRectAndRadius(
      Rect.fromCenter(
        center: center,
        width: thumbHeight * 1.2,
        height: thumbHeight * .6,
      ),
      Radius.circular(thumbRadius * .4),
    );

    final paint = Paint()
      ..color = Colors.white //Thumb Background Color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    TextSpan span = new TextSpan(
      style: new TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: HexColor('#808080'),
          height: 1),
      text: '< >',
    );
    TextPainter tp = new TextPainter(
      text: span,
      textAlign: TextAlign.left,
      textDirection: TextDirection.ltr,
    );
    tp.layout();
    Offset textCenter =
        Offset(center.dx - (tp.width / 2), center.dy - (tp.height / 2));

    canvas.drawRRect(rRect, paint);
    tp.paint(canvas, textCenter);
    paintBorder(
      canvas,
      rRect.outerRect,
      top: BorderSide(
        width: 1.0,
        color: HexColor('#808080'),
      ),
      left: BorderSide(
        width: 1.0,
        color: HexColor('#808080'),
      ),
      right: BorderSide(
        width: 1.0,
        color: HexColor('#808080'),
      ),
      bottom: BorderSide(
        width: 1.0,
        color: HexColor('#808080'),
      ),
    );
  }

  String getValue(double value) {
    return (min + (max - min) * value).round().toString();
  }
}
