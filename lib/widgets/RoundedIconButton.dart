import 'package:flutter/material.dart';

import '../global/constants.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({
    @required this.icon,
    @required this.onPressed,
  });
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: kButtonColour,
      elevation: 6.0,
      onPressed: onPressed,
    );
  }
}
