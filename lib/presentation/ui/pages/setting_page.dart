import 'package:flutter/material.dart';
import 'package:prayer_app/common/asset_path.dart';
import 'package:prayer_app/common/constants.dart';
import 'package:prayer_app/presentation/ui/widget/header_with_date_widget.dart';
import 'package:prayer_app/presentation/ui/widget/item_settings.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: defaultMargin,
              ),
              const HeaderWithDateWidget(),
              SizedBox(
                height: defaultMargin,
              ),
              Text(
                "General",
                style: primaryTextStyle.copyWith(fontWeight: semiBold),
              ),
              SizedBox(
                height: defaultMargin / 1.5,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kprimaryCollor,
                      image: const DecorationImage(
                        image: AssetImage(
                          kImgProfile,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Didin Amarudin",
                        style: primaryTextStyle.copyWith(fontWeight: medium),
                      ),
                      SizedBox(
                        height: defaultMargin / 3,
                      ),
                      Text(
                        "didinamarudin4@gmail.com",
                        style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                            color: kprimarytextColor.withOpacity(0.5)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Divider(
                height: 1,
                color: kgreyCollor,
              ),
              const ItemSettingWidget(
                  imageAsset: kIcNotification, label: "Notification"),
              Text(
                "Theme",
                style: primaryTextStyle.copyWith(fontWeight: semiBold),
              ),
              SizedBox(
                height: defaultMargin / 1.5,
              ),
              const ItemSettingWidget(
                  imageAsset: kIcDarkMode, label: "Dark Mode"),
              Divider(
                height: 1,
                color: kgreyCollor,
              ),
              const ItemSettingWidget(
                  imageAsset: kIcColorPalate, label: "Main Color"),
              Text(
                "Application",
                style: primaryTextStyle.copyWith(fontWeight: semiBold),
              ),
              SizedBox(
                height: defaultMargin / 1.5,
              ),
              const ItemSettingWidget(
                  imageAsset: kicMessage, label: "Help and Feedback"),
              Divider(
                height: 1,
                color: kgreyCollor,
              ),
            
              const ItemSettingWidget(
                  imageAsset: kIcAbout, label: "About App"),
            ],
          ),
        ),
      ),
    );
  }
}
