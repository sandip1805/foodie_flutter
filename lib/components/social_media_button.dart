import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final Color color;
  final Icon icon;
  final double size;
  final Function onPress;

  const SocialMediaButton({Key key, this.color, this.icon, this.size, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(size),
        ),
        child: icon,
      ),
    );
  }
}
