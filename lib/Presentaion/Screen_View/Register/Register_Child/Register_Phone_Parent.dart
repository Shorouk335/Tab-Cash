import 'package:flutter/material.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Common_Register_Login_Widgets.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Awesom_Dialog.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Common_Button.dart';
import 'package:tab_cash/Presentaion/Shared_Components/TextForm.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:tab_cash/Resource/Theme.dart';
import 'package:flag/flag.dart';

class RegisterPhoneParent extends StatefulWidget {
  @override
  State<RegisterPhoneParent> createState() => _RegisterPhoneParentState();
}

class _RegisterPhoneParentState extends State<RegisterPhoneParent> {
  //Phone of Parent
  TextEditingController? PhoneNumber = TextEditingController();
  var FormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.DarkGrayColor,
      body: Stack(
        children: [
          //Image of Background
          Image.asset(
            "assets/images/cover1.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          //Box of Register
          Center(
            child: SingleChildScrollView(
              child: Container(
                width: GetWidth(context) * 0.9,
                height: GetHeight(context) * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: ColorManager.LightGrayColor),
                child: Column(
                  children: [
                    //Text1+Img+Text2
                    Common_Register_Login_Widgets(
                        context, "Register", "assets/images/phone register.png",
                        Text2: "Enter your Parent\n Phone Number "),
                    SizedBox(
                      height: 42,
                    ),
                    //Box of Phone Number
                    Padding(
                      padding: const EdgeInsets.only(right: 24, left: 24),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        width: double.infinity,
                        height: GetHeight(context) * 0.06,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: ColorManager.DarkGrayColor),
                            borderRadius: BorderRadius.circular(18.0),
                            color: ColorManager.LightGrayColor),
                        child: Row(
                          children: [
                            Flag.fromCode(
                              FlagsCode.EG,
                              height: 30,
                              width: 20,
                            ),
                            Icon(
                              Icons.add,
                              color: ColorManager.DarkGrayColor,
                              size: 18.0,
                            ),
                            Text("20",
                                style: txtStyle(
                                    ColorManager.DarkGrayColor, 18.0, true)),
                            SizedBox(
                              width: 5,
                            ),
                            VerticalDivider(
                                color: ColorManager.DarkGrayColor,
                                thickness: 1),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Form(
                                key: FormKey,
                                child: TextFormWithoutBord(
                                    controller: PhoneNumber,
                                    context: context,
                                    hint: "+2 01124 568 569"),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //Button to Continue
                    CommonButton(context, "Continue", () {
                      if (FormKey.currentState!.validate()) {
                        //show dialog for waiting parent confirm
                        ShowCorrectDialog(context,
                            img: "assets/images/correct.png",
                            txt:
                                "Your Account has been created\n      but we are waiting for your\n         Parent Confirmation");
                        //if parent confirm go to home page
                        Future.delayed(Duration(seconds: 2, microseconds: 500),
                            () {
                          Navigator.pushReplacementNamed(
                              context, RouteGenerator.HomePageScreen);
                        });
                      }
                    }),
                    Spacer(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
