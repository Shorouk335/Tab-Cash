import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tab_cash/Presentaion/Screen_View/OnBoarding/after_onboarding.dart';
import 'package:tab_cash/Presentaion/Shared_Components/PageViewItem.dart';
import '../../../Data/Models/PageViewModel.dart';
import '../../../Resource/Color_Manager.dart';
import '../../../Resource/RouteGenerator.dart';
import '../../../Resource/String_Manager.dart';
import '../../../Resource/Theme.dart';

// show some pages that explain what is the major of application

class OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  //to navigator to login screen on last pageview
  var indexPageView = 0;

  // control of pageview widgets to know the number of page that I'm in
  var controller = PageController();

  //List of Data of 3 pages from class pageViewModel
  List<PageViewModel> PageViewData = [
    PageViewModel(
      img: "assets/images/bo1.png",
      title: StringManager.onBordTitle1,
      disc: StringManager.onBordDis1,
      Hsize: 3,
    ),
    PageViewModel(
      img: "assets/images/bo2.png",
      title: StringManager.onBordTitle2,
      disc: StringManager.onBordDis2,
      Hsize: 3,
    ),

  ];


  // 2 Dots move with pageView Widget by controller in pageView widgets
  Widget Dots() {
    return SmoothPageIndicator(
      count: PageViewData.length,
      controller: controller,
      effect: ExpandingDotsEffect(
        activeDotColor: ColorManager.OrangeColor,
        dotColor: ColorManager.GrayColor,
        dotHeight: 10,
        dotWidth: 15,
        expansionFactor: 2,
        spacing: 5,
      ),
    );
  }

  //Skip & Next Botton
  Widget Bottons(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(context, RouteGenerator.afterBoardingScreen);
          },
          child: Text(
            "Next" ,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              decoration: TextDecoration.underline,

            ),

          ),
        ),
      ),

    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.DarkGrayColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              children: [
                (indexPageView ==1)?
            Bottons(context): SizedBox( height: GetHeight(context)*0.04),
            Container(
              height: GetHeight(context)*0.6,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: PageViewData.length,
                itemBuilder: (context, index) {
                  return PageViewItem(context: context, model: PageViewData[index]);
                },
                controller: controller,
                physics: BouncingScrollPhysics(),
                onPageChanged: (index) {
                   setState(() {
                     indexPageView = index;

                   });
                },
              ),
            ),
            Dots(),

          ]),
        ),
      ),
    );
  }
}