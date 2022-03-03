import 'package:flutter/material.dart';
import 'package:prayer_app/common/constants.dart';

class ItemSettingWidget extends StatelessWidget {
  final String imageAsset;
  final String label;
  const ItemSettingWidget({ Key? key,required this.imageAsset,required this.label }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: defaultMargin),
      child: Row(
        children: [
          Image.asset(imageAsset,width: 25,color: kgreyCollor,fit: BoxFit.cover,),
          SizedBox(width: defaultMargin,),
          Text(label,style: primaryTextStyle.copyWith(fontWeight: medium),)
        ],
      ),
    );
  }
}