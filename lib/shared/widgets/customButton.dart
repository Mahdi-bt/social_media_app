import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class customButton extends StatelessWidget {
  final double borderRadius;
  final double height;
  final double width;
  final Color colors;
  final String text;
  String? iconPath;
  final VoidCallback function;
  customButton(
      {Key? key,
      required this.borderRadius,
      required this.height,
      required this.width,
      required this.colors,
      required this.text,
      required this.function,
      this.iconPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: iconPath != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    iconPath!,
                    height: 18,
                    color: Colors.white,
                  ),
                  Center(
                    child: Text(
                      text,
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              )
            : Center(
                child: Text(text,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.white))),
      ),
    );
  }
}
