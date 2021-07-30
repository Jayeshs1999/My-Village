

import 'dart:async';

import 'dart:io';

import 'Package:flutter/material.dart';
import 'package:majhgondegaon/secondRoute/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ePaper extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return ePaperLinks();
  }
}
class ePaperLinks extends State<ePaper>{




  //Completer<WebViewController> =Completer<WebViewController>();

  // final Set<String> _favorites=Set<String>();

  // void initState(){
  //   super.initState();
  //   if(Platform.isAndroid) WebView.platform=SurfaceAndroidWebView();
  // }


  @override
  Widget build(BuildContext context) {

    return
      Scaffold(

          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child:Icon(Icons.arrow_back),

          ),


          appBar: AppBar(
        title: Text("वर्तमानपत्र "),
        leading: IconButton(onPressed: (){
          moveToLastScreen();
        },
            icon:Icon(Icons.arrow_back)),
      ),


      body: SafeArea(child:
      Padding(padding: EdgeInsets.only(left: 3,right: 3,top: 10),
      child: ListView(
        children: [
          Container(
            color: Colors.greenAccent,
            alignment: Alignment.center,
            child: Text("वर्तमानपत्र वाचा ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          ),
          Container(height: 20,),
          Divider(thickness: 5,color: Colors.redAccent,),
          Container(height: 20,),


          InkWell(child :
          Image.asset("images/lokmat.jpg",alignment: Alignment.center,width: 60,height: 60),
          onTap:()=> launch('http://epaper.lokmat.com',)
          ),
          Divider(thickness: 2,),
          InkWell(child :
          Image.asset("images/divda.jpg",alignment: Alignment.center,width: 90,height: 90,),
              onTap:()=>launch('https://epaperdivyamarathi.bhaskar.com/')
          ),


          Divider(thickness: 2,),
          InkWell(child :
          Image.asset("images/desh.jpg",alignment: Alignment.center,width: 80,height: 80,),
              onTap:()=>launch('https://deshonnati.digitaledition.in/')
          ),

          Divider(thickness: 2,),
          InkWell(child :
          Image.asset("images/agro.jpg",alignment: Alignment.center,width: 70,height: 70,),
              onTap:()=>launch('http://epaper.agrowon.com/flashclient/client_panel.aspx#currPage=1'),
          ),
          Divider(thickness: 2,),
          InkWell(child :
          Image.asset("images/tarun.png",alignment: Alignment.center,width: 70,height: 70,),
            onTap:()=>launch('https://epaper.tarunbharat.com/'),
          ),

          Container(height: 20,),

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

                      Text("Phone : (+91)8888585093",
                        style: TextStyle(fontSize: 20,
                          color:Colors.white ,
                          fontFamily: "times new roman",),
                        textAlign: TextAlign.left,),

                      Container(height: 80,),
                      Text("Follow Us :",
                        style: TextStyle(fontSize: 20,
                          color:Colors.white ,fontFamily: "times new roman",),
                        textAlign: TextAlign.left,),


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

                      Text("2021 \u00a9 Author's \"Jayesh Sevatkar\" for Village Development",
                        style: TextStyle(fontSize: 20,color:Colors.white ,fontFamily: "times new roman",) ,),

                      Container(height: 30,),
                      Text("_____",textAlign: TextAlign.center,)

                    ],
                  ),
                ),)
          )




        ],
      ),
      )
    ));
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }





}
