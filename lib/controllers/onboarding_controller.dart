import 'package:app_1/models/onboarding_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController{
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length -1;
  var pageController = PageController() ;

  forwardAction(){
    if (isLastPage) {
      //go to homepage
    } else
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List <OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/savings1.png', 'KTC Savings', 'Community Unity') ,
    OnboardingInfo('assets/savings2.png', 'KTC PAGE 2', 'Sitio Kanhai') ,
    OnboardingInfo('assets/savings3.png', 'KTC PAGE 3', 'SKYO') ,
  ] ;
}