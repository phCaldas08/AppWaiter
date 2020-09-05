import 'package:flutter/material.dart';

class TextDinheiro extends StatelessWidget {
  final double valor;
  TextStyle style;
  TextStyle _secondStyle;

  TextDinheiro(this.valor, {@required TextStyle style}) {
    this.style = style.copyWith();
    _secondStyle = style.copyWith(fontSize: style.fontSize * 0.6);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "R\$",
          style: _secondStyle,
        ),
        Text(
          "${valor.toInt().toString()},",
          style: this.style,
        ),
        Text(
          (valor - valor.toInt()).toString(),
          style: _secondStyle,
        )
      ],
    );
  }
}
