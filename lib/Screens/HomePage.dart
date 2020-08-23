

import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paymentapp/Screens/SplitRequist.dart';
import 'package:paymentapp/Style/Style.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double width = 80.0, height = 120.0;
  Offset position;
  int currentIndex;
  @override
  void initState() {
    super.initState();
    position = Offset(0.0, height - 50);
    currentIndex = 0;
  }
  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
//        bottomNavigationBar: BottomNavigationBar(
//
//          items:[
//            BottomNavigationBarItem(
//              icon: Icon(Icons.folder),
//              title: Text(""),
//
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.folder_open),
//              title: Text(""),
//
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.refresh),
//              title: Text(""),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.linear_scale),
//              title: Text(""),
//            ),
//          ],
//        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
          backgroundColor: kMainColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BubbleBottomBar(
          backgroundColor: kMainColor,
            opacity: .2,
            currentIndex: currentIndex,
            onTap: changePage,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            elevation: 8,
            fabLocation: BubbleBottomBarFabLocation.end, //new
            hasNotch: true, //new
            hasInk: true ,//new, gives a cute ink effect
            inkColor: Colors.black12 ,//optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(backgroundColor: kSecondColor, icon: Icon(Icons.home, color: Colors.white,), activeIcon: Icon(Icons.home, color: kSecondColor,), title: Text("Home")),
          BubbleBottomBarItem(backgroundColor: kSecondColor, icon: Icon(Icons.folder, color:  Colors.white,), activeIcon: Icon(Icons.folder, color: kSecondColor,), title: Text("Data")),
        BubbleBottomBarItem(backgroundColor: kSecondColor, icon: Icon(Icons.access_time, color: Colors.white,), activeIcon: Icon(Icons.access_time, color: kSecondColor,), title: Text("History")),
        BubbleBottomBarItem(backgroundColor: kSecondColor, icon: Icon(Icons.credit_card, color: Colors.white,), activeIcon: Icon(Icons.credit_card, color: kSecondColor,), title: Text("Visa")),
        ],
      ),
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              automaticallyImplyLeading: false, // hides leading widget
              flexibleSpace: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.notifications_none,
                            color: Colors.grey,
                          ),
                          onPressed: () {}),
                      Text(
                        "Your Account",
                        style: TextStyle(color: kMainColor),
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(125),
                          child: Image(
                            image: AssetImage("assets/me.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: 660,
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25,top: 10,bottom: 10,right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width-10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(width: 5,),
                              Text("Balance",style: TextStyle(color: Colors.grey),),
                              Spacer(),
                              FlatButton(onPressed: (){}, child: Text("Add+",style: TextStyle(color: Color(0xff03add1)),),
                              disabledColor: Colors.white,
                                focusColor: Colors.white,
                              ),
                              SizedBox(width: 15,),
                            ],
                          ),
                        ),
                      ),
                      AutoSizeText(
                        '\$ 6310.00',
                        textAlign: TextAlign.right,

                        presetFontSizes: [ 27, 20,16,10],
                        style: TextStyle(color:kMainColor,fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )  ,

                      SizedBox(height: 10,),


                      Container(
                        width: MediaQuery.of(context).size.width-40,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(width: 5,),

                            MaterialButton(

                              onPressed: (){},
                              child: Row(
                                children: <Widget>[
                                  Text("Exchange",style: TextStyle(color: kMainColor),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.rotate_90_degrees_ccw,color: kMainColor,)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(color: Colors.grey,style: BorderStyle.solid),
                              ),
                              height: 40,
                            ),
                            Spacer(),
                            MaterialButton(

                              onPressed: (){},
                              child: Row(
                                children: <Widget>[
                                  Text("Transfer",style: TextStyle(color: kMainColor),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.transform,color: kMainColor,)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(color: Colors.grey,style: BorderStyle.solid),
                              ),
                              height: 40,
                            ),
                            SizedBox(width: 10,),

                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Text(" 10K . . . . . . . . . . . . . . . . . . . . . . . . . . . .  . . .  . . . ",style: TextStyle(color: Colors.grey),),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width-40,
                        child: SfCartesianChart(
                      enableAxisAnimation: true,


                          crosshairBehavior: CrosshairBehavior(
                            enable: true,
                            lineColor: kMainColor,
                            activationMode: ActivationMode.longPress
                          ),
                          enableSideBySideSeriesPlacement: true,
                          legend: Legend(
                            position: LegendPosition.bottom,
                            isVisible: true
                          ),

                          tooltipBehavior: TooltipBehavior(
                            enable: true,

                          ),

                          primaryXAxis: NumericAxis(

                            labelFormat: "{value}M"
                          ),
                          primaryYAxis: NumericAxis(
                            isVisible: false
                          ),
                          series: <ChartSeries>[
                            LineSeries<SalesDate,double>(
                              legendIconType: LegendIconType.seriesType,
                              dataSource: getColumnData(),
                              xValueMapper: (SalesDate sales,_)=> sales.x,
                              yValueMapper:(SalesDate sales,_)=> sales.y,
                              color: kMainColor,
                              dataLabelSettings: DataLabelSettings(
                                isVisible: true,
                                labelPosition: ChartDataLabelPosition.inside,
                              )

                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width-40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(width: 5,),
                              Text("Transaction",style: TextStyle(color: Colors.grey),),
                              Spacer(),
                              Text("17Jun",style: TextStyle(color: Colors.grey),),

                              SizedBox(width: 15,),
                            ],
                          ),

                        ),
                      ),
                      SizedBox(height: 15,),
                      Users(image: "assets/me.jpg",name: "Mohamed Khira",time: "10.10",balance: "728.00",),

                      Users(image: "assets/adel.jpg",name: "Abd Elrhman Adle",time: "18.12",balance: "542.00",),
                      Users(image: "assets/asem.jpg",name: "Assem Khalifa",time: "22.05",balance: "305.00",),


                    ],
                  ),
                ),
              ),
              Positioned(
                left: position.dx > 360
                    ? MediaQuery.of(context).size.width - 50
                    : position.dx,
                top: position.dy >= 600 ? 600 : position.dy - 20,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SpiltRequest();
                    }));
                  },
                  child: Draggable(

                    ignoringFeedbackSemantics: false,
                    child: Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 7.5,
                            left: 7.5,
                            child: Container(
                              height: 105,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xff312773),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(150),
                                      child: Hero(
                                        tag: "userImage1",
                                        child: Image(
                                          image: AssetImage('assets/me.jpg'),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '\$ 92.99',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 4,
                            top: 15,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Color(0xff312773),
                                  shape: BoxShape.circle),
                              child: Center(
                                  child: Icon(
                                Icons.priority_high,
                                color: Colors.white,
                                size: 15,
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                    feedback: Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 7.5,
                            left: 7.5,
                            child: Container(
                              height: 105,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xff312773),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(150),
                                      child: Image(
                                        image: AssetImage('assets/me.jpg'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '\$ 92.99',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 4,
                            top: 15,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Color(0xff312773),
                                  shape: BoxShape.circle),
                              child: Center(
                                  child: Icon(
                                Icons.priority_high,
                                color: Colors.white,
                                size: 15,
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                    onDraggableCanceled: (Velocity velocity, Offset offset) {
                      print(position.dx);
                      print(position.dy);
                      setState(() => position = offset);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Users extends StatelessWidget {
  const Users({
    this.name,this.image,this.balance,this.time
  }) ;

  final String image;
  final String name;
  final String time;
  final String balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
//     color: Color(0xfffaf9fc),
      width: MediaQuery.of(context).size.width-45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
             child: ClipRRect(
               borderRadius: BorderRadius.circular(120),
               child: Image(image: AssetImage("$image")),
             ),
          ),
          SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("$name",style: TextStyle(color: Color(0xffc1bfcf),fontSize: 12),),
                Text("$time",style: TextStyle(color: Color(0xffc1bfcf),fontSize: 12),),
              ],
            ),
          ),
      Text("+$balance",style: TextStyle(color: Color(0xff03add1))),
        ],
      ),

    );
  }
}

class SalesDate{

  double x ;
  double y;

  SalesDate({this.x,this.y});

}

dynamic getColumnData(){
  List<SalesDate> columnData = <SalesDate> [
    SalesDate(x: 10,y: 20),
    SalesDate(x: 20,y: 30),
    SalesDate(x: 30,y: 10),
    SalesDate(x: 40,y: 50),
    SalesDate(x: 50,y: 50),
    SalesDate(x: 60,y: 20),
    SalesDate(x: 70,y: 40),
    SalesDate(x: 80,y: 10),
    SalesDate(x: 90,y: 50),
    SalesDate(x: 100,y: 50),

  ];
  return columnData;
}


//dynamic getHugDate(){
//  List<SalesDate> hugDate = <SalesDate>[];
//  double value = 100;
//  Random random = new Random();
//
//   for(int i = 0 ; i< 1000 ; i++){
//    if(random.nextDouble() >.5){
//      value+=random.nextDouble();
//    }else{
//      value-=random.nextDouble();
//
//    }
//    hugDate.add(SalesDate(x: i.toDouble(),y: value));
//
//   }
//
//   return hugDate;
//
//}