import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prayer_app/presentation/ui/pages/main_page.dart';

class OnBoardingProvider extends ChangeNotifier{
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void changeIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }

  void showHome(){
    Get.off(()=> const MainPage());
  }


}