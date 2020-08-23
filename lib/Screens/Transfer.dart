

import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paymentapp/Style/Style.dart';

class Transfer extends StatefulWidget {
  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {

  Color x = kMainColor;
  Color y = kMainColor;
  Color buttonColor = Color(0xff9995B6);
  int bottom =220;
  int arrowLeft =40;
  int arrowRight =40;
  int textScale =130;
  int reciverName =85;
  String buttonText = "Transfer Money";

  int i = -40;
  bool success = false;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 500),(){
  setState(() {
    x = Color(0xff9995B6);
    y = kMainColor;
     arrowLeft =20;
     arrowRight =20;

  });

    });
    Timer(Duration(milliseconds: 1000),(){
    setState(() {
      y = Color(0xff9995B6);
      x = kMainColor;
      buttonText= "Processing...";

      arrowLeft =40;
      arrowRight =40;
    });

    });
    Timer(Duration(milliseconds: 1500),(){

   setState(() {
     x = Color(0xff9995B6);
     y = kMainColor;

     arrowLeft =20;
     arrowRight =20;

   });

    });

    Timer(Duration(milliseconds: 2000),(){


      setState(() {
        y = Color(0xff9995B6);
        x = kMainColor;
        arrowLeft =40;
        arrowRight =40;

      });


    });


    Timer(Duration(milliseconds: 2500),(){

      setState(() {
        y = kMainColor;
        x = kMainColor;
        i =25;
        bottom = 155;
        textScale =80;
        reciverName = 30;
        buttonText= "OK";
        buttonColor = kMainColor;
        success =true;

      });

    });

  }

  @override
  void dispose() {
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:   AppBar(
          leading: IconButton(icon: Icon(Icons.close,color: kMainColor,), onPressed: (){
            Navigator.pop(context);
          }),
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false, // hides leading widget
          flexibleSpace: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Center(child: Text("Transfer Money",style: TextStyle(color: kMainColor),),),
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20,),
                Center(child: Text("Hollywood Girl & Bar",style: TextStyle(color: Colors.grey,fontSize: 20),)),
              SizedBox(height: 20,),
              Center(child: Text("\$ 92.22",style: TextStyle(color: kMainColor,fontSize: 20,fontWeight: FontWeight.bold),)),

              Container(
                 width: MediaQuery.of(context).size.width+80,
                 height: 430,
                 child: Stack(
                   children: <Widget>[
                     Positioned(
//                       duration: Duration(milliseconds: 2500),
                       top: 20,
                       left: i.toDouble(),
                       child: ContainerTransaction(x: x, y: y,image: "assets/adel.jpg",),

                     ),
                     Positioned(
//                       duration: Duration(milliseconds: 2500),

                       top: 20,
                       right:i.toDouble(),
                       child:
                       ContainerTransaction(x: x, y: y,image: "assets/me.jpg",),
                     ),

                    Positioned(
                      bottom: bottom.toDouble(),
                      left: 165,
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],

                        ),
                        
                        child:
                       success == true ? Center(
                         child: Icon(Icons.done,size: 45,color: kMainColor,),
                       ) :Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              duration: Duration(milliseconds: 500),
                              top: 20,
                              left: arrowRight.toDouble(),
                              child: Icon(Icons.arrow_forward,size: 30,color: kMainColor,),
                            ),

                            AnimatedPositioned(
                              duration: Duration(milliseconds: 500),
                              bottom: 20,
                              right: arrowLeft.toDouble(),
                              child: Icon(Icons.arrow_back,size: 30,color: kMainColor,),
                            )
                          ],
                        ),
                        
                      ),
                    ),
                     Positioned(
                       bottom: textScale.toDouble(),
                       left: 70,
                       child: Container(
                         width: MediaQuery.of(context).size.width/1.5,
                         child: Column(
                           children: <Widget>[
                            success ?Text("Transfer",style: TextStyle(color: kMainColor,fontSize: 20),) :Text("Transfering",style: TextStyle(color: kMainColor,fontSize: 20),),
                            success? Text("Successfuly",style: TextStyle(color: kMainColor,fontSize: 20),)  :Text("requested amount",style: TextStyle(color: kMainColor,fontSize: 20),)
                           ],
                         ),
                       ),
                     ),
                     Positioned(
                       bottom: reciverName.toDouble(),
                       left: 70,
                       child: Container(
                         width: MediaQuery.of(context).size.width/1.5,
                         child: Center(
                           child: Text("To Abd El Rhman Adel",style: TextStyle(color: Colors.grey,),),
                         )
                       ),
                     ),


                   ],
                 ),
               ),

              SizedBox(height: 80,),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: buttonColor
                ),
                child: MaterialButton(onPressed: (){
//                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Transfer()));
                },
                  height: 60,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: buttonColor,style: BorderStyle.solid),
                  ),
                  child: Text("$buttonText",style: TextStyle(color: Colors.white),),
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ContainerTransaction extends StatelessWidget {
  const ContainerTransaction({
    Key key,
    this.image,
    @required this.x,
    @required this.y,
  }) : super(key: key);

  final Color x;
  final Color y;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 210,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent
      ),
      child: Stack(
        children: <Widget>[
          CircleContainer(y: 0,x: 0,color: x,h: 205,w: 205,),
          CircleContainer(y: 15.5,x: 15.5,color: y,h: 175,w: 175,),
          CircleContainer(y: 33,x: 33,color: x,h: 140,w: 140,),
          CircleContainer(y: 50.5,x: 50.5,color: y,h: 105,w: 105,),
          Positioned(
            top: 67.5,
            left: 67.5,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kSecondColor
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Image(image: AssetImage("$image")),
              ),
            ),


          )

        ],
      ),
    );
  }
}


class CircleContainer extends StatelessWidget {
  const CircleContainer({
    this.color,this.x,this.y,this.h,this.w
  }) ;

  final double x;
  final double y;
  final double h;
  final double w;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: x,
      left: y,
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: color
          ),
          shape: BoxShape.circle,
          color: Colors.transparent
        ),
      ),
    );
  }
}


