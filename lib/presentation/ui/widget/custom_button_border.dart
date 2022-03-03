import 'package:flutter/material.dart';
import 'package:prayer_app/common/constants.dart';

class CustomButtonBorderWidget extends StatelessWidget {
  final String buttonName;
  final Function onPressed;
  final double height;
  final bool isBlack;
  final Color color;
  final bool isDisabble;
  final double width;
  const CustomButtonBorderWidget(
      {Key? key,
      required this.buttonName,
      required this.onPressed,
      required this.height,
      required this.width,
      required this.color,
      this.isBlack = false,
      this.isDisabble = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: isDisabble
            ? () {}
            : () {
                onPressed();
              },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(buttonName,
            style: isDisabble
                ? secondaryTextStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold)
                : primaryTextStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold)),
      ),
    );
  }
}
