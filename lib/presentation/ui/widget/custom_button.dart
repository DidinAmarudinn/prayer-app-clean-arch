import 'package:flutter/material.dart';
import 'package:prayer_app/common/constants.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonName;
  final Function onPressed;
  final double height;
  final bool isBlack;
  final Color color;
  final double width;
  const CustomButtonWidget(
      {Key? key,
      required this.buttonName,
      required this.onPressed,
      required this.height,
      required this.width,
      required this.color,
      this.isBlack = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          buttonName,
          style: primaryTextStyle.copyWith(
            fontSize: 14,
            fontWeight: semiBold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
