import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:majhgondegaon/main.dart';
import 'package:majhgondegaon/new.dart';
import 'package:majhgondegaon/secondRoute/ePaper.dart';
import 'package:majhgondegaon/secondRoute/farmer.dart';
import 'package:majhgondegaon/secondRoute/grampanchay.dart';
import 'package:majhgondegaon/secondRoute/home.dart';
import 'package:majhgondegaon/secondRoute/links.dart';
import 'package:majhgondegaon/secondRoute/query.dart';

import 'dropdown.dart';
//import 'package:majhgondegaon/secondRoute/new.dart';


class mainWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return fulWidget();
  }
}
class fulWidget extends State<mainWidget>{
  final List<String> imageList=[

    "images/school.jpg",
    "images/road.jpg",
    "images/hos.jpg",
    "images/gram.jpg",
    "images/pal.jpg",
    "images/stand.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    DateTime now=new DateTime.now();
    return WillPopScope( onWillPop: () async =>await Navigator.push(context,MaterialPageRoute(builder: (context){
        return mainWidget();
      })),
    child:
      MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return FirstScreen();
            }));
          },
          child:Icon(Icons.arrow_back),

        ),

        backgroundColor: Colors.white,
        appBar:AppBar(
          elevation: 30,
          iconTheme: IconThemeData(color: Colors.white,size:50,opacity: 40),
          backgroundColor: Colors.redAccent,
          title: Text("MajhGaon ",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "times new roman"),),

          actions: [
            PopupMenuButton(
                onSelected: handlePopupMenu,
                itemBuilder: (BuildContext context){
                  return{"help","privacy policy","about us"}.map((String choice){
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                }
            ),

          ],
        ),

        //drawerScrimColor: Colors.greenAccent  ,

        drawer: Builder(builder: (context)=>
            Drawer(
              child: ListView(
                children: [
                  Container(
                      child:DrawerHeader(
                          child:Image.asset("images/home.jpg"))
                  ),
                  Padding(padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: new Container(
                      color: Colors.greenAccent,
                      child: new Column(
                        children: [
                          Text("Welcome To Gondegaon !",
                            style: TextStyle(fontSize: 20,color: Colors.blue, fontFamily: "Times new roman",fontWeight: FontWeight.w900),),
                          Container(height: 10,),
                          ListTile(
                            title: Text("ग्रामपंचायत  ",style: TextStyle(fontSize:20,fontWeight: FontWeight.w900,fontFamily: "Times new roman"),),
                            leading: Icon(Icons.people),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>grampanch()));
                            },
                          ),
                          Divider(thickness: 1,),
                          ListTile(
                            title: Text("वर्तमानपत्र ",style: TextStyle(fontSize:20,fontWeight: FontWeight.w900,fontFamily: "Times new roman"),),
                            leading: Icon(Icons.padding),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ePaper()));
                            },
                          ),
                          Divider(thickness: 1,),
                          ListTile(
                            title: Text(" तक्रार करा  ",style: TextStyle(fontSize:20,fontWeight: FontWeight.w900,fontFamily: "Times new roman"),),
                            leading: Icon(Icons.add),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>query()));
                            },
                          ),
                          Divider(thickness: 1,),
                          ListTile(
                            title: Text("महत्वाच्या लिंक्स",style: TextStyle(fontSize:20,fontWeight: FontWeight.w900,fontFamily: "Times new roman"),),
                            leading: Icon(Icons.link),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>links()));
                            },
                          ),

                          Divider(thickness: 1,),
                          ListTile(
                            title: Text("शेतीविषयक",style: TextStyle(fontSize:20,fontWeight: FontWeight.w900,fontFamily: "Times new roman"),),
                            leading: Icon(Icons.crop_landscape),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>farmer()));
                            },
                          ),
                          Divider(thickness: 1,),
                          ListTile(
                            title: Text("गावातील लोक ",style: TextStyle(fontSize:20,fontWeight: FontWeight.w900,fontFamily: "Times new roman"),),
                            leading: Icon(Icons.people_outline),
                            onTap: (){

                            },
                          ),
                          Divider(thickness: 1,),
                          ListTile(
                            title: Text("Gallary",style: TextStyle(fontSize:20,fontWeight: FontWeight.w900,fontFamily: "Times new roman"),),
                            leading: Icon(Icons.work),
                            onTap: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context) =>));

                            },
                          ),
                          Divider(thickness: 1,),
                          ListTile(
                            title: Text("",style: TextStyle(fontSize:20,fontWeight: FontWeight.w900,fontFamily: "Times new roman"),),
                            leading: Icon(Icons.flag_outlined),
                            onTap: (){
                              debugPrint("you tap on template");
                            },
                          ),


                        ],
                      ),
                    ),
                  )
                ],
              ),

            ),),


        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/homeback.jpg"),
            fit: BoxFit.cover
            )
          ),
          child: ListView(
            children: [
              FittedBox(
                child :Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[

                    Padding(padding: EdgeInsets.only(left: 2,right: 3,top: 10),
                      child: Stack(
                        children: [
                          Positioned(
                              child: Card(
                                elevation: 10.0,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  constraints: BoxConstraints(maxWidth: 630,maxHeight: 240),
                                ),
                              )
                          ),
                          Positioned(
                              top: 60,
                              left: 530,
                              child: Image(image: AssetImage("images/naru.png"),
                                width: 120, height: 120,alignment: Alignment.centerLeft,)
                          ),
                          Positioned(
                              top: 40,
                              left: 380,
                              child: Image(image: AssetImage("images/udv1.jpg"),
                                width: 160, height: 160,alignment: Alignment.centerLeft,)
                          ),
                          Positioned(
                            top: 60,
                            left: 180,
                            child: Text("माझ गोंदेगाव ",style: TextStyle(fontSize: 50  ,color: Colors.white,fontWeight: FontWeight.bold),),
                            width: 160, height: 160,),

                          Positioned(
                              top: 40,
                              child: Image(image: AssetImage("images/home.jpg"),
                                width: 160, height: 160,alignment: Alignment.centerLeft,)
                          )
                        ],
                      ),

                    )
                    // Image.asset("images/home.jpg",width: 80,height: 80,),
                    // Text("माझ गोंदेगाव",style: TextStyle(fontSize: 30,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                    // Image.asset("images/udv1.jpg",width: 90,height: 100,),
                    // Image.asset("images/naru.png",width: 70,height: 100,),

                  ],
                ),),
              Padding(padding: EdgeInsets.only(left: 20,right: 20),
                child : Divider(thickness: 2,color: Colors.deepOrange,),),



              Text(DateFormat.yMMMd().format(now),
                  style: TextStyle(fontFamily: "times new roman",
                      fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,
                      backgroundColor:Colors.red),textAlign: TextAlign.end),

              // Table(
              //   children: [
              //     TableRow(
              //       children: [
              //         Container(height: 20,color: Colors.orange,),
              //         Container(height: 20,color: Colors.orange,),
              //         Container(height: 20,color: Colors.white,),
              //
              //         Container(height: 20,color: Colors.green,),
              //         Container(height: 20,color: Colors.green,),
              //
              //       ]
              //     )
              //   ],
              // ),




              Padding(padding: EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child:
                    Center(
                      child: Text("माझ्या स्वप्नातील आदर्श गाव ",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Times new roman",
                          fontWeight: FontWeight.w900,
                          color:Colors.white,
                        ),),
                    ),),
                ),),

              Padding(padding: EdgeInsets.only(top: 30,left: 5,right: 5,bottom: 5),
                child: Column(
                  children: [
                    Center(
                      child: CarouselSlider(options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        autoPlay: true,
                      ),
                          items: imageList.map((e) => ClipRRect(

                              borderRadius: BorderRadius.circular(8),
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Image.asset(e,width: 1000,height: 2000,fit: BoxFit.cover,)
                                ],
                              )

                          )).toList()
                      ),
                    )
                  ],
                ),
              ),

              Row(
                children: [
                  Expanded(child:
                  Image.asset("images/hos.jpg"),),
                  Container(width: 5,),
                  Expanded(child:
                  Image.asset("images/stand.jpg"),),

                ],
              ),

              Padding(padding: EdgeInsets.only(top:30,left: 10,right: 10),
                child: Text("गोंदेगाव हे गाव पहूर-पाचोरा दरम्यान असून ते पहूर पासून ७ कमी कि.मी.व शेंदुर्णी पासून २.५ कि.मी. अंतरावर आहे.",
                  style: TextStyle(fontSize: 20),),
              ),


              Padding(padding: EdgeInsets.only(top: 80),
                  child:
                  Container(
                    color: Colors.lightBlue,
                    child: Padding(padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children:[
                          Container(height: 40,),

                          Text("CONTACT US",
                            style: TextStyle(fontSize: 30,color:Colors.white ,fontFamily: "times new roman"),),
                          Container(height: 20,),

                          Text("Email : jayeshsevatkar55@gmail.com",
                            style: TextStyle(fontSize: 20,color:Colors.white ,fontFamily: "times new roman"),),

                          Container(height: 20,),

                          Text("Address : Grampanchayat Gondegaon ,Tal-Jamner ,Dist- Jalgaon 424204, Maharashtra",
                            style: TextStyle(fontSize: 20,color:Colors.white,fontFamily: "times new roman" ),),
                          Container(height: 20,),

                          Text("Phone : 8888585093,\n9370110989 ",
                            style: TextStyle(fontSize: 20,color:Colors.white ,fontFamily: "times new roman",),textAlign: TextAlign.left,),
                          Container(height: 100,),


                          Row(
                            children: [
                              Icon(Icons.facebook,size: 50,),
                              Image.asset("images/linkin.png",width: 60,),
                              Image.asset("images/whatsup.png",width: 50,),
                              Container(width: 4,),
                              Image.asset("images/insta.png",width: 40,),

                            ],
                          ),
                          Container(height: 30,),
                          
                          Text("2021 \u00a9 Author's \"Jayesh Sevatkar\" for Village Development.",
                            style: TextStyle(fontSize: 20,color:Colors.white ,fontFamily: "times new roman",) ,),

                          Container(height: 30,),
                          Text("_____",textAlign: TextAlign.center,),

                        ],
                      ),
                    ),)
              )
            ],
          ),
        ),

      ),
      ));
  }




  void handlePopupMenu(String value) {
    switch(value)
    {
      case "help": debugPrint("you click on help");
      break;
      case "privacy policy": debugPrint("you click on Privacy policy");
      break;
      case "about us": debugPrint("you click on about us");
      break;
    }
  }
}

