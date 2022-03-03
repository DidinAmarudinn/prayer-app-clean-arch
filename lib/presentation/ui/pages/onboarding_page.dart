import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prayer_app/common/asset_path.dart';
import 'package:prayer_app/common/constants.dart';
import 'package:prayer_app/presentation/provider/onboarding_provider.dart';
import 'package:prayer_app/presentation/ui/widget/custom_button.dart';
import 'package:prayer_app/presentation/ui/widget/custom_button_border.dart';
import 'package:prayer_app/presentation/ui/widget/location_textfield.dart';
import 'package:prayer_app/presentation/ui/widget/onboard_widget.dart';
import 'package:provider/provider.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  nextFunction() {
    pageController.nextPage(duration: kDuration, curve: kCurve);
  }

  previousFunction() {
    pageController.previousPage(duration: kDuration, curve: kCurve);
  }

  @override
  Widget build(BuildContext context) {
    double width = Get.size.width;
    double height = Get.size.height;
    final provider = Provider.of<OnBoardingProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(defaultMargin),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.65,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    provider.changeIndex(index);
                  },
                  children: [
                    OnBoardWidget(
                      width: width,
                      title: "A new way to manage our worship",
                      subTitle: "We can help you manage your worship list time",
                      imageName: kimageLogo,
                    ),
                    OnBoardWidget(
                      width: width,
                      title: "Ask question anytime anywhere",
                      subTitle:
                          "A question from to help you find answers from an Islamic prespective",
                      imageName: kimageLogo,
                    ),
                    OnBoardWidget(
                      width: width,
                      title: "All worship agendas are managed effectively",
                      subTitle:
                          "Prayer times sucs as fasting and prayer are prepared according to the location",
                      imageName: kimageLogo,
                    ),
                  ],
                ),
              ),
              DotsIndicator(
                dotsCount: 3,
                position: provider.currentIndex.toDouble(),
                decorator: DotsDecorator(
                  size: const Size.square(10.0),
                  activeSize: const Size(18.0, 9.0),
                  spacing: const EdgeInsets.all(3),
                  activeColor: kprimaryCollor,
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  provider.currentIndex == 2
                      ? LocationTextField(width: width)
                      : CustomButtonBorderWidget(
                          buttonName: "Back",
                          onPressed: () {
                            previousFunction();
                          },
                          height: 50,
                          isDisabble: provider.currentIndex == 0 ? true : false,
                          width: width,
                          color: kprimaryCollor),
                  SizedBox(height: defaultMargin / 2),
                  CustomButtonWidget(
                      buttonName: provider.currentIndex == 2 ? "Get Started" : "Next",
                      onPressed: () {
                        if (provider.currentIndex == 2) {
                          provider.showHome();
                        } else {
                          nextFunction();
                        }
                      },
                      height: 50,
                      width: width,
                      color: kprimaryCollor)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
