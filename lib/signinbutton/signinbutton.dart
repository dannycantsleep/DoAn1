import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class CustomSignInButton extends StatelessWidget {
  final Color backgroundColor;
  final VoidCallback onPressed;
  final String text;
  final IconData? icon;
  final Image? image;
  final double fontSize;
  final Color textColor;
  final Color iconColor;
  final Color splashColor;
  final Color highlightColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? innerPadding;
  final bool mini;
  final double elevation;
  final ShapeBorder? shape;
  final double? height;
  final double? width;

  const CustomSignInButton({
    Key? key,
    required this.backgroundColor,
    required this.onPressed,
    required this.text,
    this.icon,
    this.image,
    this.fontSize = 14.0,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
    this.splashColor = Colors.white30,
    this.highlightColor = Colors.white30,
    this.padding,
    this.innerPadding,
    this.mini = false,
    this.elevation = 2.0,
    this.shape,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInButtonBuilder(
      key: key,
      backgroundColor: backgroundColor,
      onPressed: onPressed,
      text: text,
      icon: icon,
      image: image,
      fontSize: fontSize,
      textColor: textColor,
      iconColor: iconColor,
      splashColor: splashColor,
      highlightColor: highlightColor,
      mini: mini,
      elevation: elevation,
      shape: shape,
      height: height,
      width: width,
    );
  }
}
