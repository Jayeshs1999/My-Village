

import 'dart:async';
import 'dart:io';

import 'Package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ePaper extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return ePaperLinks();
  }
}
class ePaperLinks extends State<ePaper>{

  // Completer<WebViewController> _controller=Completer<WebViewController>();
  // void initState(){
  //   super.initState();
  //   if(Platform.isAndroid) WebView.platform=SurfaceAndroidWebView();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("वर्तमानपत्र "),
        leading: IconButton(onPressed: (){
          moveToLastScreen();
        },
            icon:Icon(Icons.arrow_back)),

      ),
      body: Padding(padding: EdgeInsets.all(10),
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


          // WebView(
          //   initialUrl:"http://epaper.lokmat.com/" ,
          //   javascriptMode: JavascriptMode.unrestricted,
          //   onWebViewCreated: (WebViewController controller){
          //     _controller.complete(controller);
          //   },
          // ),
          InkWell(child :
          Image.asset("images/lokmat.jpg",alignment: Alignment.center,width: 60,height: 60),
          onTap:()=>launch('http://epaper.lokmat.com/')
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


        ],
      ),
      )
    );
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }

}