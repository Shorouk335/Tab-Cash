import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:tab_cash/Resource/Theme.dart';

class ManageAccounts extends StatelessWidget{
  var controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        elevation: 0.0,
        backgroundColor: ColorManager.DarkGrayColor,
        leading:  IconButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context, RouteGenerator.HomePageScreen);
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Colors.white,
        ),
        title:  Text("Manage Accounts",
          style: txtStyle(Colors.white, 22.0, true),
        ) ,
      ) ,
      backgroundColor: ColorManager.DarkGrayColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller,

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,
                  color: Colors.white,),
                  filled: true,
                  fillColor: Colors.white10,
                  hintText: "Search by Name",
                  hintStyle: Theme.of(context).textTheme.bodyText2,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),

              ),
              SizedBox(height: 10,),
              Container(

                width: GetWidth(context) * 1.1,
                height: GetHeight(context) * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromRGBO(200, 255, 250, 0.6)
                ),

                child:Column(
                  children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor:ColorManager.OrangeColor,
                          child:Icon(Icons.wallet_giftcard_sharp,
                            color: Colors.black,),
                          //   color: Colors.black,

                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Text("Mohamed Reda",
                        style: txtStyle(Colors.black,15.0, true),
                        ),
                        Text("Mohamed123@gmail.com",
                          style: txtStyle(Colors.black,15.0, false),
                        ),
                          Text("SAVING XXXXXX0152",
                            style: txtStyle(Colors.black45,15.0, false),
                          )
                      ],),
                    ],
                  ),
                    Padding(
                        padding: EdgeInsets.all(10.0) ,
                        child :InkWell(
                          onTap:(){},
                          child: Container(
                            height: GetHeight(context)*0.07,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                border: Border.all(color: Colors.black45),
                                color: Colors.transparent
                            ),
                            child: Center(child: Text("Check Balance",style:txtStyle(Colors.black45,20.0, true),)),
                          ),
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text("Sub Accounts",
              style: txtStyle(Colors.white, 15.0, false),
              ),
              SizedBox(height: 10,),
              Container(

                width: GetWidth(context) * 1.1,
                height: GetHeight(context) * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromRGBO(200, 255, 250, 0.6)
                ),

                child:Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor:ColorManager.OrangeColor,
                            child:Icon(Icons.wallet_giftcard_sharp,
                              color: Colors.black,),
                            //   color: Colors.black,

                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Yasmeen Mohamed Reda",
                              style: txtStyle(Colors.black,15.0, true),
                            ),
                            Text("YasoMohamed123@gmail.com",
                              style: txtStyle(Colors.black,15.0, false),
                            ),
                            Text("SAVING XXXXXX0152",
                              style: txtStyle(Colors.black45,15.0, false),
                            )
                          ],),
                      ],
                    ),
                   SizedBox(height: 40,),
                    Container(
                      width: 350,
                      height: 1,
                      color: Colors.black45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(onPressed: (){},
                            child: Text("View activity",
                            style: txtStyle(Colors.black45, 18.0, false),
                            ),
                        
                        ),
                      //  SizedBox(width: 90,),
                        TextButton(onPressed: (){},
                          child: Text("Check Balance",
                            style: txtStyle(Colors.black45, 18.0, false),
                          ),

                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(

                width: GetWidth(context) * 1.1,
                height: GetHeight(context) * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromRGBO(200, 255, 250, 0.6)
                ),

                child:Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor:ColorManager.OrangeColor,
                            child:Icon(Icons.wallet_giftcard_sharp,
                              color: Colors.black,),
                            //   color: Colors.black,

                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Yaseen Mohamed Reda",
                              style: txtStyle(Colors.black,15.0, true),
                            ),
                            Text("YaseenMohamed123@gmail.com",
                              style: txtStyle(Colors.black,15.0, false),
                            ),
                            Text("SAVING XXXXXX0152",
                              style: txtStyle(Colors.black45,15.0, false),
                            )
                          ],),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Container(
                      width: 350,
                      height: 1,
                      color: Colors.black45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(onPressed: (){},
                          child: Text("View activity",
                            style: txtStyle(Colors.black45, 18.0, false),
                          ),

                        ),
                        //  SizedBox(width: 90,),
                        TextButton(onPressed: (){},
                          child: Text("Check Balance",
                            style: txtStyle(Colors.black45, 18.0, false),
                          ),

                        )
                      ],
                    )
                  ],
                ),
              ),



            ],

        ),
      ),
      // bottomNavigationBar: Container(
      //
      //   width: GetWidth(context) * 1.1,
      //   height: 70,
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20.0),
      //       color: Color.fromRGBO(200, 255, 250, 0.6)
      //   ),
      //
      //   child:Padding(
      //     padding: const EdgeInsets.all(10.0),
      //     child: Row(
      //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Column(
      //           children: [
      //             Icon(Icons.home,
      //               size: 35,
      //               color: Colors.white,
      //             ),
      //             Text("Home",
      //               style: txtStyle(Colors.white, 10.0, false),
      //             )
      //           ],
      //         ),
      //         Column(
      //           children: [
      //             Icon(Icons.multiline_chart,
      //               size: 35,
      //               color: Colors.white,
      //             ),
      //             Text("Statistics",
      //               style: txtStyle(Colors.white, 10.0, false),
      //             )
      //           ],
      //         ),
      //         Column(
      //           children: [
      //             Icon(Icons.account_balance,
      //               size: 35,
      //               color: Colors.white,),
      //             Text("Accounts",
      //               style: txtStyle(Colors.white, 10.0, false),
      //             )
      //           ],
      //         ),
      //         Column(
      //           children: [
      //             Icon(Icons.person_pin,
      //               size: 35,
      //               color: Colors.white,),
      //             Text("Profile",
      //               style: txtStyle(Colors.white, 10.0, false),
      //             )
      //           ],
      //         )
      //
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

}