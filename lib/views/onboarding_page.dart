import 'package:app_1/controllers/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:get/get.dart';

class OnboardingPage extends StatelessWidget {
  final controller = OnboardingController() ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold (
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: controller.pageController,
                      onPageChanged: controller.selectedPageIndex,
                        itemCount: controller.onboardingPages.length,
                        itemBuilder: (context,index){
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(controller.onboardingPages[index].imageAsset),
                            const SizedBox (height: 25 ),
                            Text(controller.onboardingPages[index].title, style:
                            const TextStyle(fontSize: 30)) ,
                            const SizedBox(height: 25) ,
                            Text(controller.onboardingPages[index].description, style:
                            const TextStyle(fontSize: 15)) ,
                          ],
                        ),
                      ) ;
                    }),
                  ),
                  Container(
                    height: 55,
                    margin: EdgeInsets.all(45),
                    width: double.infinity,
                    color: Colors.blue,
                    child: FloatingActionButton(
                      elevation: 0,
                      onPressed: controller.forwardAction,
                      child: Obx (() {
                        return Text(controller.isLastPage ? 'Start' : 'Next');
                      }),
                  )
              ),
            ],
          ),
              Positioned(
                  bottom: 120,
                  left: (MediaQuery.of(context).size.width/2)-30,
                  child: Row(
              children: List.generate(
              controller.onboardingPages.length,
                    (index) => Obx(() {
                  return Container(
                      margin: const EdgeInsets.all(3),
                      width: 12,
                      height: 12,
                      decoration:  BoxDecoration(
                        color: controller.selectedPageIndex.value == index
                            ? Colors.black
                            : Colors.grey,
                        shape: BoxShape.circle,
                      )
                  );
                }
                ),
              ))
          )]),
      )),
    );
  }
}