import 'package:flutter/material.dart';
import 'package:tab_cash/Data/Models/PageViewModel.dart';
import 'package:tab_cash/Presentaion/Shared_Components/PageViewItem.dart';
import 'package:tab_cash/Resource/Theme.dart';

import '../../../Resource/Color_Manager.dart';
import '../../../Resource/RouteGenerator.dart';
import '../../../Resource/String_Manager.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Common_Button.dart';

class AfterOnBoarding extends StatelessWidget {
  //to navigator to afterBoarding on last pageview
  var indexPageView = 0;

  // control of pageview widgets to know the number of page that I'm in
  var controller = PageController();

  //List of Data of 3 pages from class pageViewModel
  List<PageViewModel> PageViewData = [
    PageViewModel(
      img: "assets/images/bo3.png",
      title: StringManager.onBordTitle3,
      disc: StringManager.onBordDis3,
      Hsize: 3,
    ),
  ];
 //Function return IMG & title &  description
  Widget Content(BuildContext context) {
    return Container(
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
          indexPageView = index;
        },
      ),
    );
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
            Content(context),
            SizedBox(height: 48,),
            //Button of Sign in
            CommonButton(context, "Sign in", () {
                Navigator.pushReplacementNamed(
                    context, RouteGenerator.LogInScreen);
            }),
            SizedBox(height: 10,),
                //Button of Register Now
                CommonButtonTransparent(context, "Register Now", () {
                Navigator.pushReplacementNamed(
                    context, RouteGenerator.RegPhoneScreen);

            }),

          ]),
        ),
      ),
    );
  }
}
