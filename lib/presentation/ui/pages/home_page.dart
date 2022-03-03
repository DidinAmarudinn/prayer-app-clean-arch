import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prayer_app/common/asset_path.dart';
import 'package:prayer_app/common/constants.dart';
import 'package:prayer_app/data/model/day_model.dart';
import 'package:prayer_app/presentation/provider/day_provider.dart';
import 'package:prayer_app/presentation/ui/widget/header_with_date_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: defaultMargin / 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: const HeaderWithDateWidget(),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: CardTime(width: width),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                padding: EdgeInsets.only(left: defaultMargin),
                itemCount: day.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Consumer<DayProvider>(
                    builder: (context, value, _) => GestureDetector(
                      onTap: (){
                        value.changeIndex(index);
                      },
                      child: CircleDate(
                        index: index,
                        selectedIndex: value.selectedIndex,
                        label: day[index].name,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleDate extends StatelessWidget {
  final int? index;
  final int? selectedIndex;
  final String? label;
  const CircleDate({
    Key? key,
    this.index,
    this.selectedIndex,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.only(right: defaultMargin / 2),
      decoration: BoxDecoration(
        color: index == selectedIndex ? kprimaryCollor : klightGreyCollor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          label ?? "",
          style: primaryTextStyle.copyWith(
            color: index == selectedIndex ? kWhiteCollor : kBlackCollor,
          ),
        ),
      ),
    );
  }
}

class CardTime extends StatelessWidget {
  const CardTime({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: width,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              kiImgMosque,
              width: width,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 250,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: kprimaryCollor.withOpacity(0.80),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dzuhur",
                  style: primaryTextStyle.copyWith(
                    color: kWhiteCollor,
                    fontSize: 22,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: defaultMargin / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "11:29 ",
                      style: primaryTextStyle.copyWith(
                        color: kWhiteCollor,
                        fontSize: 42,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      "AM",
                      style: primaryTextStyle.copyWith(
                        color: kWhiteCollor,
                        fontSize: 18,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: defaultMargin / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: kWhiteCollor,
                    ),
                    SizedBox(
                      width: defaultMargin / 4,
                    ),
                    Text(
                      "Kecamatan Cisalak",
                      style: primaryTextStyle.copyWith(
                        color: kWhiteCollor,
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

