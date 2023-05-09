import 'package:flutter/material.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Common_Register_Login_Widgets.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Common_Button.dart';
import 'package:tab_cash/Presentaion/Shared_Components/TextForm.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:tab_cash/Resource/Theme.dart';
class SetPassword extends StatefulWidget {
  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  // Data of Set Password
  TextEditingController? Password = TextEditingController();
  TextEditingController? Confirm_Password = TextEditingController();

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
                height: GetHeight(context) * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: ColorManager.LightGrayColor),
                child: Column(
                  children: [
                    Common_Register_Login_Widgets(
                      context, "Set your Password", "assets/images/password.png",
                    Text2: "input a valid password to complete\n registration Process"
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 14, left: 14),
                      child: Form(
                          key: FormKey,
                          child: Column(
                            children: [
                              TextFormWidget(
                                  context: context ,
                                  txt: "Password" ,
                                  controller: Password ,
                                  password: true ,
                                  icon: Icons.lock_open,
                                  ontap: (){}
                              ),
                              TextFormWidget(
                                  context: context ,
                                  txt: "Confirm Password" ,
                                  controller: Confirm_Password ,
                                  password: true ,
                                  icon: Icons.lock_open,
                                  ontap: (){}
                              )

                            ],
                          )),
                    ),
                    Spacer(),
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
          )
        ],
      ),
    );
  } }