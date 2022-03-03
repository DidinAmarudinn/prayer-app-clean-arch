import 'package:flutter/material.dart';

import '../../../common/constants.dart';

class OnBoardWidget extends StatelessWidget {
  final double width;
  final String imageName;
  final String title;
  final String subTitle;

  const OnBoardWidget(
      {Key? key,
      required this.width,
      required this.imageName,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageName,
          width: width /2,
        ),
        SizedBox(
          height: defaultMargin * 3,
        ),
        Text(
         title,
          textAlign: TextAlign.center,
          style: primaryTextStyle.copyWith(
            fontSize: 28,
            fontWeight: semiBold,
          ),
        ),
        SizedBox(
          height: defaultMargin ,
        ),
        Text(
         subTitle,
          textAlign: TextAlign.center,
          style: secondaryTextStyle.copyWith(fontSize: 18),
        )
      ],
    );
  }
}
