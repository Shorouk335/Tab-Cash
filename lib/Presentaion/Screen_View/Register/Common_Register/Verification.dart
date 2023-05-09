
import 'package:flutter/material.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Common_Register_Login_Widgets.dart';
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
                height: GetHeight(context) * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: ColorManager.LightGrayColor),
                child: Column(
                  children: [
                    //Img + text1+ text2
                    Common_Register_Login_Widgets(
                        context, "Verification", "assets/images/verification.png",
                        Text2: "Please Enter The Code was send to\n                your Phone number"
                    ),
                    SizedBox(height: 42,),
                    Padding(
                      padding: const EdgeInsets.only(right: 24, left: 24),
                      //Box of varifaction number
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
                    SizedBox(height: 15,),
                    //Button of continue
                    CommonButton(context, "Continue", () {
                      if (FormKey.currentState!.validate())
                      {
                        Navigator.pushReplacementNamed(context, RouteGenerator.SetPasswordScreen);

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
      width:68,// GetWidth(context)/6,
      height:46,// GetHeight(context)*0.06,
      child: TextFormWithoutBord(context: context ,controller: con),
    );




  }
}
