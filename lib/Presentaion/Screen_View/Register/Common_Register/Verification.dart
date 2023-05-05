
import 'package:flutter/material.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Auth_Fisrt.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Common_Button.dart';
import 'package:tab_cash/Presentaion/Shared_Components/TextForm.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:tab_cash/Resource/Theme.dart';
class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  TextEditingController? Number1 = TextEditingController();
  TextEditingController? Number2 = TextEditingController();
  TextEditingController? Number3 = TextEditingController();
  TextEditingController? Number4 = TextEditingController();
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
                height: GetHeight(context) * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: ColorManager.LightGrayColor),
                child: Column(
                  children: [
                    AuthFirstWidgets(
                        context, "Verification", "assets/images/verification.png",
                        Text2: "Please Enter The Code was send to\n                your Phone number"
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: FormKey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BoxNumber(Number1!),
                            BoxNumber(Number2!),
                            BoxNumber(Number3!),
                            BoxNumber(Number4!),
                          ],
                        ),
                      )
                            ),
                    CommonButton(context, "Continue", () {
                      if (FormKey.currentState!.validate())
                      {
                        Navigator.pushReplacementNamed(context, RouteGenerator.RegDataScreen);

                      }
                    }),
                    Spacer(),

                          ],

                        ),
                      ),
                    ),

          ),
                  ],
                ),
              );

  }
  Widget BoxNumber (TextEditingController con){
    return Container(
      width: GetWidth(context)/6,
      height: GetHeight(context)*0.06,
      decoration: BoxDecoration(
          border: Border.all(
              width: 1,
              color: ColorManager.DarkGrayColor),
          borderRadius: BorderRadius.circular(15.0),
          color: ColorManager.LightGrayColor),
      child: Center(child: TextFormWithoutBord(context: context ,controller: con)),
    );




  }
}
