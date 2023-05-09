import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/Color_Manager.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:tab_cash/Resource/Theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashBoard extends StatelessWidget{
  get icon => null;

  @override
  Widget build(BuildContext context) {
    DropdownMenuItem<String> BuildDropMenuItem(String Item) => DropdownMenuItem(
        value: Item,
        child: Text(
          Item,
          style: Theme.of(context).textTheme.bodyText2,
        ));
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
        title:  Text("Dashboard",
          style: txtStyle(Colors.white, 22.0, true),
        ) ,
      ) ,
      backgroundColor: ColorManager.DarkGrayColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child:Padding(
            padding: const EdgeInsets.all(15.0),
            child:Column(
crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Overall Budget",
                style: txtStyle(Colors.white, 20.0, true),
                ),
                SizedBox(height: 10,),
                Container(

                  width: GetWidth(context) * 1.1,
                  height: GetHeight(context) * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(200, 255, 250, 0.6)
                  ),

                  child: Container(
                    child: SfCartesianChart(

                      primaryXAxis: CategoryAxis(
                        axisLine: AxisLine(

                          color: Colors.white,
                          width: 1
                        )
                      ),
                      primaryYAxis: NumericAxis(
                        borderColor: Colors.white,
                        borderWidth: 0
                      ),

                      series: <SplineSeries<SalesData, String>>[
                         SplineSeries<SalesData , String>(
                           color: Colors.white,
                             width: 3,
                             dataSource: <SalesData>[
                               SalesData(5000, "Sun"),
                               SalesData(4000, "Mon"),
                               SalesData(6000, "Tue"),
                               SalesData(5000, "Wed"),
                               SalesData(6000, "Thu"),
                               SalesData(4000, "Fri"),
                               SalesData(6000, "Sat"),


                             ],
                             xValueMapper: (SalesData sales,_) => sales.year ,
                             yValueMapper: (SalesData sales,_) => sales.sales ,
                           pointColorMapper: (SalesData sales,_) => Colors.white

                         ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Track your Spending",
                  style: txtStyle(Colors.white, 20.0, true),
                ),
                SizedBox(height: 10,),
                Container(

                  width: GetWidth(context) * 1.1,
                  height: GetHeight(context) * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(200, 255, 250, 0.6)
                  ),

                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Services",
                        style: txtStyle(Colors.black, 15.0, true),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width:200.0,
                                    height: 30,
                                    child:Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Price('250.00'),
                                    ) ,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.zero,
                                      color: Colors.yellow,

                                    ),
                                  ),
                                  SizedBox(width: 50,),
                                  Text("Food & Drinks",
                                  style: txtStyle(Colors.white, 15.0, false),
                                  )
                                ],
                              ),
                           SizedBox(height: 20,),
                              Row(
                                children: [
                                  Container(

                                    width:150.0,
                                    height: 30,
                                    child:Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Price('150.0'),
                                    ) ,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.zero,
                                      color: Colors.lightBlueAccent[100],

                                    ),
                                  ),
                                  SizedBox(width: 130,),
                                  Text("Shopping",
                                    style: txtStyle(Colors.white, 15.0, false),
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Container(
                                    width:100.0,
                                    height: 30,
                                    child:Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Price('50.0'),
                                    ) ,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.zero,
                                      color: Colors.deepOrangeAccent[100],

                                    ),
                                  ),
                                  SizedBox(width: 178,),
                                  Text("Electricity",
                                    style: txtStyle(Colors.white, 15.0, false),
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Container(
                                    width:50.0,
                                    height: 30,
                                    child:Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Price('20.0'),
                                    ) ,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.zero,
                                      color: Colors.green[200],

                                    ),
                                  ),
                                  SizedBox(width: 230,),
                                  Text("Transport",
                                    style: txtStyle(Colors.white, 15.0, false),
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),

                            ],
                          ),
                      ),

                    ],
                  ) ,
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Expenses",
                      style: txtStyle(Colors.white, 20.0, true),
                    ),
                    SizedBox(width: 200,),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        "View all",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          decoration: TextDecoration.underline,

                        ),

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
               Container(

                 width: GetWidth(context) * 1.1,
                  height: GetHeight(context) * 0.1,
                 decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20.0),
                       color: Color.fromRGBO(200, 255, 250, 0.6)
                   ),
                 child: Row(

                   children: [
                     Padding(
                       padding: const EdgeInsets.all(5.0),
                       child: CircleAvatar(
                         radius: 30,
                         backgroundColor:ColorManager.OrangeColor,
                         child:Icon(Icons.shopping_bag,
                         color: Colors.black,),
                         //   color: Colors.black,

                       ),
                     ),
                     Expenses(

                      "Lcwaikiki"
                         , "2nd jun 2023",
                       "600.00"
                         ),
                   ],
                 ),
               ),
                SizedBox(height: 10,),
                Container(

                  width: GetWidth(context) * 1.1,
                  height: GetHeight(context) * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(200, 255, 250, 0.6)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor:ColorManager.OrangeColor,
                          child:Icon(Icons.fastfood,
                          color: Colors.black,),
                          //   color: Colors.black,

                        ),
                      ),
                      Expenses(

                          "Burger King"
                          , "2nd jun 2023",
                          "300.00"
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(

                  width: GetWidth(context) * 1.1,
                  height: GetHeight(context) * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(200, 255, 250, 0.6)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor:ColorManager.OrangeColor,
                          child:Icon(Icons.shopping_bag,
                          color: Colors.black,),
                          //   color: Colors.black,

                        ),
                      ),

                      Expenses(

                          "Defacto"
                          , "2nd jun 2023",
                          "500.00"
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Daily Tips",
                  style: txtStyle(Colors.white, 20.0, true),
                ),
                SizedBox(height: 10,),
                Container(
                  width: GetWidth(context) * 1.1,
                  height: GetHeight(context) * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(200, 255, 250, 0.6)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        "How to control your Shopping expenses",
                        style: txtStyle(Colors.black, 15.0, true),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: GetWidth(context) * 1.1,
                  height: GetHeight(context) * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(200, 255, 250, 0.6)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        "How to save money",
                        style: txtStyle(Colors.black, 15.0, true),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: GetWidth(context) * 1.1,
                  height: GetHeight(context) * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(200, 255, 250, 0.6)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        "How to think before you spend",
                        style: txtStyle(Colors.black, 15.0, true),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: GetWidth(context) * 1.1,
                  height: GetHeight(context) * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(200, 255, 250, 0.6)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        "How to control your Shopping expenses",
                        style: txtStyle(Colors.black, 15.0, true),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ) ,
        ),
      ),
    );
  }
Widget Price(String price){
    return Text(
      price as String,
      style:txtStyle(Colors.black, 15.0, false) ,
    );
}
Widget Expenses( String txt1,String txt2,String txt3){
    return Container(

      // width: GetWidth(context) * 1.1,
      // height: GetHeight(context) * 0.1,
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(20.0),
      //     color: Color.fromRGBO(200, 255, 250, 0.6)
      // ),

      child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Stack(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Stack(
          //         children: [
          //           Container(
          //             child: this.icon,
          //           ),
          //           CircleAvatar(
          //           radius: 30,
          //           backgroundColor:ColorManager.OrangeColor,
          //            child:this.icon,
          //          //   color: Colors.black,
          //
          //         ),
          //
          //
          //         ]
          //
          //       ),
          //
          //     )
          //   ],
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text(txt1,
                style: txtStyle(Colors.black, 15.0,false),
              ),
              SizedBox(height: 5,),
              Text(txt2,
                style: txtStyle(Colors.black45, 15.0,false),
              )
            ],
          ),
          SizedBox(width: 140,),
          Text(txt3,
            style: txtStyle(Colors.black, 20.0, false),
          )
        ],
      ) ,
    );
}
}
class SalesData{
  SalesData(this.sales,this.year);
  final int sales;
  final String year;

}
