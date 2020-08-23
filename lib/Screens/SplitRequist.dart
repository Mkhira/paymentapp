






import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paymentapp/Screens/Transfer.dart';
import 'package:paymentapp/Style/Style.dart';

class SpiltRequest extends StatefulWidget {
  @override
  _SpiltRequestState createState() => _SpiltRequestState();
}

class _SpiltRequestState extends State<SpiltRequest>  with SingleTickerProviderStateMixin{

  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..addListener(() => setState(() {}));
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );

    animationController.forward();

  }


  @override
  void dispose() {
    animationController.dispose();
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
              child: Center(child: Text("Split request",style: TextStyle(color: kMainColor),),),
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 8,left: 20,right: 20,bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 Center(
                   child: Container(
                     padding: EdgeInsets.all(25),
                     height: 120,
                     width: MediaQuery.of(context).size.width-92,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Color(0xffFAFAFA),
                     ),
                     child: Text("it was great!         Thanks for hanging out.",style: TextStyle(color: Colors.grey,fontSize: 19),),
                   ),
                 ),
                   SizedBox(height: 15,),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width-92,
                      child: Row(
                        children: <Widget>[
                          Container(height: 55,width: 55,
                          decoration: BoxDecoration(shape: BoxShape.circle,
                          ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(120),
                              child: Hero(
                                  tag: "userImage1",
                                  child: Image(image: AssetImage("assets/me.jpg"),fit: BoxFit.contain,)),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Mohamed Khira",style: TextStyle(color: Colors.grey),),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),

                  Divider(),
                  SizedBox(height: 15,),

                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width-92,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(" Requisted amount",style: TextStyle(color: Colors.grey),),
                           SizedBox(height: 10,),
                          Container(
                            width: MediaQuery.of(context).size.width-92,
                            child: Row(
                              children: <Widget>[
                                Text(" Holywood Girl & Bar",style: TextStyle(color: kMainColor,fontSize: 15),),
                                Spacer(),
                                Container(height: 55,width: 55,
                                  decoration: BoxDecoration(shape: BoxShape.circle,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(120),
                                    child: Hero(
                                        tag: "userImage",
                                        child: Image(image: AssetImage("assets/bill.jpg"),fit: BoxFit.contain,)),
                                  ),
                                ),


                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            width: MediaQuery.of(context).size.width-92,
                            child: Row(
                              children: <Widget>[
                                Text(" \$ 92.22",style: TextStyle(color: kMainColor,fontSize: 22),),
                                Spacer(),
                                Text("  See bill",style: TextStyle(color: kSecondColor),),



                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),

                  Divider(),
                  SizedBox(height: 10,),

                  Container(
                    width: MediaQuery.of(context).size.width-92,
                    child: Row(
                      children: <Widget>[
                        Text("  Carslberg Beer",style: TextStyle(color: kMainColor,),),
                        Spacer(),
                        Text(" \$ 15.00",style: TextStyle(color: kMainColor,fontSize: 15,fontWeight: FontWeight.bold),),



                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Divider(),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width-92,
                    child: Row(
                      children: <Widget>[
                        Text("  Carslberg Beer",style: TextStyle(color: kMainColor,),),
                        Spacer(),
                        Text(" \$ 15.00",style: TextStyle(color: kMainColor,fontSize: 15,fontWeight: FontWeight.bold),),



                      ],
                    ),
                  ),
                  SizedBox(height: 10,),

                  Divider(),
                  SizedBox(height: 10,),

                  Container(
                    width: MediaQuery.of(context).size.width-92,
                    child: Row(
                      children: <Widget>[
                        Text("  Carslberg Beer",style: TextStyle(color: kMainColor,),),
                        Spacer(),
                        Text(" \$ 15.00",style: TextStyle(color: kMainColor,fontSize: 15,fontWeight: FontWeight.bold),),



                      ],
                    ),
                  ),
                  SizedBox(height: 10,),

                  Divider(),

                  SizedBox(height: 50,),

                  Center(
                    child: ScaleTransition(
                      scale: animation,
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: kMainColor
                        ),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Transfer()));
                      },
                        height: 60,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(color: kMainColor,style: BorderStyle.solid),
                          ),
                      child: Text("Transfer Money",style: TextStyle(color: Colors.white),),
                      ),

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
