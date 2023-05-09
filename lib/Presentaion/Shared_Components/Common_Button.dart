import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';
import 'package:tab_cash/Resource/Theme.dart';

//Button Common in OnBoarding & Register & Login
Widget CommonButton(BuildContext context, String txt, void Function() ontap) {
  return Padding(
      padding: EdgeInsets.only(right: 24, left: 24),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: GetHeight(context) * 0.07,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: ColorManager.OrangeColor),
          child: Center(
              child: Text(
            "$txt",
            style: Theme.of(context).textTheme.bodyText1,
          )),
        ),
      ));
}

//Button only in afterOnBoarding Page
Widget CommonButtonTransparent(
    BuildContext context, String txt, void Function() ontap) {
  return Padding(
      padding: EdgeInsets.only(right: 24, left: 24),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: GetHeight(context) * 0.07,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(color: ColorManager.OrangeColor),
              color: ColorManager.DarkGrayColor),
          child: Center(
              child: Text(
            "$txt",
            style: txtStyle(ColorManager.OrangeColor, 20.0, false),
          )),
        ),
      ));
}

//Button Common in Best Offer in Home Page
Widget OfferButton(BuildContext context, void Function() ontap) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: GetHeight(context) * 0.03,
      width: 150.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: ColorManager.OrangeColor),
      child: Center(
          child: Text("Check Offer",
              style: txtStyle(ColorManager.OfferTxtColor, 15.0, true))),
    ),
  );
}
