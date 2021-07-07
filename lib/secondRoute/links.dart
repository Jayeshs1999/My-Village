import 'package:flutter/material.dart';

class links extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return linksInfo();
  }
}
class linksInfo extends  State<links>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Farmer",style: TextStyle(fontFamily: "times new roman"),) ,
      ),
      body: Text("Sorry ! This Page Under the Maintainance ",
        style: TextStyle(fontSize: 50,fontFamily: "times new roman",color: Colors.redAccent,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,),
    );
  }

}