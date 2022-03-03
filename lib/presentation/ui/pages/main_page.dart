import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:prayer_app/common/asset_path.dart';
import 'package:prayer_app/common/constants.dart';
import 'package:prayer_app/presentation/provider/bottom_navbar_provider.dart';
import 'package:prayer_app/presentation/ui/pages/calendar_page.dart';
import 'package:prayer_app/presentation/ui/pages/home_page.dart';
import 'package:prayer_app/presentation/ui/pages/setting_page.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PersistentTabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Column(
          children: [
            Image.asset(
              kicHome,
              width: 25,
            ),
            SizedBox(
              height: 6,
            ),
            Material(
                child: Text(
              "Home",
              style: primaryTextStyle.copyWith(fontSize: 12),
            ))
          ],
        ),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings),
        title: ("Settings"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings),
        title: ("Settings"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return const[HomePage(), CalendarPage(), SettingPage()];
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavbarProvider>(context);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      onItemSelected: (index){
        provider.changeIndex(index);
      },
      items: [
        PersistentBottomNavBarItem(
          icon: BottomWidget(
            color: provider.currentIndex == 0 ? kprimaryCollor : kgreyCollor,
            imageName: kicHome,
            label: "Home",
          ),
        ),
        PersistentBottomNavBarItem(
          icon: BottomWidget(
            color: provider.currentIndex == 1 ? kprimaryCollor : kgreyCollor,
            imageName: kicCalendar,
            label: "Calendar",
          ),
        ),
        PersistentBottomNavBarItem(
          icon: BottomWidget(
            color: provider.currentIndex == 2 ? kprimaryCollor : kgreyCollor,
            imageName: kicSetting,
            label: "Setting",
          ),
        ),
      ],
      confineInSafeArea: true,
      navBarHeight: 65,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.simple, // Choose the nav bar style with this property.
    );
  }
}

class BottomWidget extends StatelessWidget {
  final Color color;
  final String imageName;
  final String label;
  const BottomWidget({
    Key? key,
    required this.color,
    required this.imageName,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageName,
          width: 25,
          color: color,
        ),
        const SizedBox(
          height: 6,
        ),
        Material(
            child: Text(
          label,
          style: primaryTextStyle.copyWith(fontSize: 12,color: color),
        ))
      ],
    );
  }
}
