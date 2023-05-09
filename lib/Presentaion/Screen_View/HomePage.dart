import 'package:flutter/material.dart';
import 'package:tab_cash/Data/Models/HomeModel.dart';
import 'package:tab_cash/Data/Models/OfferModel.dart';
import 'package:tab_cash/Presentaion/Shared_Components/Common_Button.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:tab_cash/Resource/Theme.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { 
  
  //Name of User
  String UserName = "Mohamed Ashraf";
  //Index of BottomNavigetor
  int IndexBottomNav = 0 ;
  //Function of Top Category 
  Widget HomeTopCategory({String? img, String? txt}) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        height: GetHeight(context) * 0.145,
        width: GetWidth(context) * 0.42,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: ColorManager.HomeColorBox),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("$img", width: 55, height: 55, fit: BoxFit.contain),
              Text(
                "$txt",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
  //Data of Top Category
  List HomeTopData = [
    HomeModel(img: "assets/images/Icon1.png", txt: "Transfer Money"),
    HomeModel(img: "assets/images/Icon2.png", txt: "Scan QR Code"),
    HomeModel(img: "assets/images/Icon3.png", txt: "Near ATM"),
    HomeModel(img: "assets/images/Icon4.png", txt: "ATM Cash "),
  ];
  //Data of Online Payment
  List PaymentsData = [
    HomeModel(txt: "Pay Bills", img: "assets/images/Icon5.png"),
    HomeModel(txt: "Food&\nDrinks", img: "assets/images/Icon6.png"),
    HomeModel(txt: "Shopping", img: "assets/images/Icon7.png"),
    HomeModel(txt: "Tickets", img: "assets/images/Icon8.png"),
    HomeModel(txt: "Donations", img: "assets/images/Icon9.png"),
    HomeModel(txt: "Health", img: "assets/images/Icon10.png"),
    HomeModel(txt: "Add More", img: "assets/images/Icon11.png"),
  ];
  //Data of Best Offer 
  List OfferData = [
    OfferModel(
        discount: "15%",
        disc: "Get 15% Discount When\n online Shopping",
        img: "assets/images/offer2.png"),
    OfferModel(
        discount: "30%",
        disc:
            "You can enjoy 30% Discount when inviting\n your friends to get the app",
        img: "assets/images/offer1.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.DarkGrayColor,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [ 
            //Image of BackGround
            Image.asset(
              "assets/images/cover1.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                  //Img of User +Good Morning +Name + Notification Icon
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/profile.png",
                            fit: BoxFit.contain, width: 60, height: 60),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text("Good Morning ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0)),
                            Text("$UserName",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0)),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 25.0,
                          backgroundColor: ColorManager.LightGrayColor,
                          child: Icon(
                            Icons.notifications_active_outlined,
                            color: ColorManager.DarkGreenColor,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ), 
                  //Top Category Items
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5,left: 12, right: 10 ,bottom: 5),
                      child: ListView.builder(
                          itemCount: 2,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                HomeTopCategory(
                                  // in index 0 =>0 1 of ListItems in row
                                  // in index 1 =>2 3 of ListItems in next row
                                    img: (index == 0)
                                        ? "${HomeTopData[index].img}"
                                        : "${HomeTopData[index + 1].img}",
                                    txt: (index == 0)
                                        ? "${HomeTopData[index].txt}"
                                        : "${HomeTopData[index + 1].txt}"),
                                HomeTopCategory(
                                    img: (index == 0)
                                        ? "${HomeTopData[index + 1].img}"
                                        : "${HomeTopData[index + 2].img}",
                                    txt: (index == 0)
                                        ? "${HomeTopData[index + 1].txt}"
                                        : "${HomeTopData[index + 2].txt}"),
                              ],
                            );
                          }),
                    ),
                  ),
                  // Line 1  
                  Center(
                    child: SizedBox(
                        width: GetWidth(context) * 0.8,
                        child: Divider(
                          thickness: 3,
                          color: ColorManager.DividerColor,
                        )),
                  ),
                  //Text Online Payments
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Online Payments",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ), 
                  //Online Payments Items
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: ColorManager.HomeColorBox,
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: PaymentsData.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              width: GetWidth(context) / 5,
                              decoration: BoxDecoration(
                                  color: ColorManager.LightGrayColor,
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "${PaymentsData[index].img}",
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.contain,
                                  ),
                                  Text("${PaymentsData[index].txt}")
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ), 
                  //Line2
                  Center(
                    child: SizedBox(
                        height: GetHeight(context) * 0.03,
                        width: GetWidth(context) * 0.8,
                        child: Divider(
                          thickness: 3,
                          color: ColorManager.DividerColor,
                        )),
                  ),
                  //Text Best Offers
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Best Offers",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ), 
                  //Best Offer Items 
                  Expanded(
                      flex: 3,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: GetHeight(context) * 0.04,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: ColorManager.OfferColor,
                              ),
                              width: GetWidth(context) * 0.8,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: (index ==2)?
                                    //Offer Img
                                    Image.asset("assets/images/offerimg'.png",fit: BoxFit.fill,)
                                //Offer Box
                                    : Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text("${OfferData[index].discount}",
                                                style: txtStyle(
                                                    ColorManager.OfferTxtColor,
                                                    30.0,
                                                    true)),
                                            Text("Discount",
                                                style: txtStyle(
                                                    ColorManager.OfferTxtColor,
                                                    15.0,
                                                    false)),
                                          ],
                                        ),
                                        Text("${OfferData[index].disc}",
                                            style: txtStyle(
                                                ColorManager.OfferTxtColor,
                                                10.0,
                                                false)),
                                        OfferButton(context,  () { }),
                                      ],
                                    ),
                                    Image.asset(
                                      "${OfferData[index].img}",
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: ColorManager.DarkGreenColor),
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: ColorManager.DarkGreenColor,
            highlightColor: ColorManager.DarkGreenColor,
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedIconTheme: IconThemeData(
              size: 30.0,
            ),
            unselectedIconTheme: IconThemeData(
              size: 30.0,
            ),
            type: BottomNavigationBarType.fixed,
            onTap: (value){
              setState(() {
                this.IndexBottomNav = value ;
                // to go to Dash bord page
                if (this.IndexBottomNav ==1){
                  Navigator.pushReplacementNamed(context, RouteGenerator.Dash_BoardScreen);
                }
                else if ( this.IndexBottomNav == 3){
                  Navigator.pushReplacementNamed(context, RouteGenerator.ManageAccountScreen);
                }
              });
            },
            currentIndex: IndexBottomNav,
            selectedItemColor: Colors.white,
            unselectedItemColor: ColorManager.BottomNavColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: txtStyle(Colors.white, 15.0, false),
            unselectedLabelStyle:
                txtStyle(ColorManager.BottomNavColor, 15.0, false),
            iconSize: 20,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: "Statistics",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance),
                label: "Accounts",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
