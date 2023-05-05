import 'package:flutter/material.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Auth_Fisrt.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Common_Button.dart';
import 'package:tab_cash/Presentaion/Shared_Components/TextForm.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:tab_cash/Resource/Theme.dart';
class RegisterPhone extends StatefulWidget {
  @override
  State<RegisterPhone> createState() => _RegisterPhoneState();
}

class _RegisterPhoneState extends State<RegisterPhone> {
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
                height: GetHeight(context) * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: ColorManager.LightGrayColor),
                child: Column(
                  children: [
                    AuthFirstWidgets(
                      context, "Register Phone", "assets/images/phone register.png",
                    Text2: "Enter your Phone Number "
                    ),
                    Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          width: double.infinity,
                          height: GetHeight(context)*0.06,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: ColorManager.DarkGrayColor),
                              borderRadius: BorderRadius.circular(15.0),
                              color: ColorManager.LightGrayColor),
                        child: Row(
                        children: [
                          Icon(Icons.add ,color: ColorManager.DarkGrayColor,size: 25.0,),
                          Text("20",style: Theme.of(context).textTheme.bodyText1,) ,
                          SizedBox(width: 5,),
                          VerticalDivider(color: ColorManager.DarkGrayColor,thickness: 2,),
                          Expanded(child: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Form(
                              key: FormKey,
                              child: TextFormWithoutBord (controller: PhoneNumber ,context: context ,hint: "01245685696"),
                            ),
                          )),
                        ],

                        ),
                    ),
                      ),
                    CommonButton(context, "Continue", () {
                      if (FormKey.currentState!.validate())
                      {
                        Navigator.pushReplacementNamed(context, RouteGenerator.VerificationScreen);

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
