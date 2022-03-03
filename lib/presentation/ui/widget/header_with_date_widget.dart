import 'package:flutter/cupertino.dart';

import '../../../common/constants.dart';

class HeaderWithDateWidget extends StatelessWidget {
  const HeaderWithDateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: klightGreyCollor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Icon(
              CupertinoIcons.book,
              color: kBlackCollor,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              "Mon, 14 Dec",
              style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: defaultMargin / 3,
            ),
            Text(
              "25, Rabi'll 1442 AH",
              style: secondaryTextStyle,
            ),
          ],
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: klightGreyCollor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Icon(
              CupertinoIcons.compass,
              color: kBlackCollor,
            ),
          ),
        ),
      ],
    );
  }
}
