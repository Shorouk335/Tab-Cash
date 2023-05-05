import 'package:flutter/material.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Auth_Fisrt.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Common_Button.dart';
import 'package:tab_cash/Presentaion/Shared_Components/TextForm.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:tab_cash/Resource/Theme.dart';

import '../../../../Resource/Color_Manager.dart';

class RegisterData extends StatefulWidget {
  @override
  State<RegisterData> createState() => _RegisterDataState();
}

class _RegisterDataState extends State<RegisterData> {
  // Data of Register
  TextEditingController? FirstName = TextEditingController();
  TextEditingController? LastName = TextEditingController();
  TextEditingController? Email = TextEditingController();
  //Data of Type of user from dropdownbuttton
  String? Type;
  final ItemsList = ["Parent", "Child"];
  // for validation
  var FormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // Function return DropdownMenuItem to show in menu of DroPdown
    DropdownMenuItem<String> BuildDropMenuItem(String Item) => DropdownMenuItem(
        value: Item,
        child: Text(
          Item,
          style: Theme.of(context).textTheme.bodyText2,
        ));
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
                height: GetHeight(context) * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: ColorManager.LightGrayColor),
                child: Column(
                  children: [
                    AuthFirstWidgets(
                        context, "Register", "assets/images/register.png",
                        Text2:
                            "input a valid password to complete\n               registration Process"),
                    Spacer(),
                    Form(
                      key: FormKey,
                      child: Column(
                        children: [
                          TextFormWithoutIcon(
                              controller: FirstName,
                              txt: "First Name",
                              context: context),
                          TextFormWithoutIcon(
                              controller: LastName,
                              txt: "LastName",
                              context: context),
                          TextFormWithoutIcon(
                              controller: Email, txt: "Email", context: context),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              width: double.infinity,
                              height: GetHeight(context)*0.07,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: ColorManager.DarkGrayColor),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: ColorManager.LightGrayColor),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  dropdownColor: ColorManager.LightGrayColor,
                                  borderRadius: BorderRadius.circular(15.0),
                                  items:
                                      ItemsList.map(BuildDropMenuItem).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      this.Type = value;
                                    });
                                  },
                                  value: Type,
                                  isExpanded: true,
                                  icon: Icon(Icons.keyboard_arrow_down_sharp,
                                      color: ColorManager.DarkGrayColor,
                                      size: 25.0),
                                ),
                              ),
                            ),
                            (Type == null)
                                ? Positioned(
                                    bottom: 20,
                                    left: 15,
                                    child: Text(
                                      "Type of User",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ))
                                : SizedBox()
                          ],
                        )),
                    Spacer(),
                    CommonButton(context, "Continue", () {
                      if (FormKey.currentState!.validate())
                        {
                        Navigator.pushReplacementNamed(context, RouteGenerator.LogInScreen);
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
