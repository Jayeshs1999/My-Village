import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:majhgondegaon/secondRoute/dropdown.dart';
void main(){
  runApp(MaterialApp(
    theme:
    ThemeData(
      primaryColor: Colors.red,
      accentColor: Colors.yellowAccent,
    ),
    debugShowCheckedModeBanner: false,
    home: splashScreen(),
  ));
}

class splashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _splashScreenBody();
  }
}
class _splashScreenBody extends State<splashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds:5),
            () =>{
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return FirstScreen();
          }))
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration( color: Colors.redAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 70,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Image.asset("images/icon.jpg"),

                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 10.0)
                      ),
                      Text(
                        "My Village",style: TextStyle(color: Colors.white,fontSize: 30.0,fontFamily: "times new roman",fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text("My Life With\n My Village  ",style: TextStyle(color: Colors.white,fontFamily: "times new roman"),)

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}



