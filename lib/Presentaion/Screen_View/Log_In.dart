import 'package:flutter/material.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Auth_Fisrt.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Common_Button.dart';
import 'package:tab_cash/Presentaion/Shared_Components/TextForm.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:tab_cash/Resource/Theme.dart';
class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // Data of Login
  TextEditingController? PhoneNumber = TextEditingController();
  TextEditingController? Password = TextEditingController();

  var FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorManager.DarkGrayColor,
      body: Stack(
        children: [
          //Image of Background
          Image.asset(
            "assets/images/cover2.png",
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
                    AuthFirstWidgets(
                        context, "Log In", "assets/images/login.png",),
                    Spacer(),
                    Form(
                       key: FormKey,
                        child: Column(
                      children: [
                        TextFormWidget(
                          context: context ,
                          txt: "Phone Number " ,
                          controller: PhoneNumber ,
                          password: false ,
                          icon: Icons.phone,
                          ontap: (){}
                        ),
                        TextFormWidget(
                            context: context ,
                            txt: "Password " ,
                            controller: Password ,
                            password: false ,
                            icon: Icons.lock_open,
                            ontap: (){}
                        )

                      ],
                    )),
                    Spacer(),
                    CommonButton(context, "Sign In", () {
                      if (FormKey.currentState!.validate())
                      {
                        Navigator.pushReplacementNamed(context, RouteGenerator.RegPhoneScreen);

                      }
                    }),
                    Spacer(),
                    Center(child: Text("Forget Password",style: Theme.of(context).textTheme.bodyText2,),),
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