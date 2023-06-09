import 'package:bursam_app/utilities/custom_paddings.dart';
import 'package:flutter/material.dart';

class PositionedStackInfo extends StatelessWidget {
  PositionedStackInfo(
      {Key? key, required String text, required TextStyle? textStyle})
      : _text = text,
        _textStyle = textStyle,
        super(key: key);

  final String _text;
  final TextStyle? _textStyle;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 10,
        bottom: 10,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: CustomPaddings.mainScaffoldPadding.getPadding(),
            child: Text(_text, style: _textStyle),
          ),
        ));
  }
}
