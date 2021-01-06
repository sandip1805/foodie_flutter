import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/constants.dart';

class RoundedButton extends StatelessWidget {
  final Function onPressed;
  final String label;
  final double width;
  final double height;

  const RoundedButton(
      {Key key, this.onPressed, this.label, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: FlatButton(
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
