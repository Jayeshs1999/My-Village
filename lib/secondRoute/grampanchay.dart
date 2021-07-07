import 'package:flutter/material.dart';

class grampanch extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return gramInfo();
  }
}
class gramInfo extends  State<grampanch>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("GramPanchayat",style: TextStyle(fontFamily: "times new roman"),) ,
      ),
      body: Text("Sorry ! This Page Under the Maintainance ",
        style: TextStyle(fontSize: 50,fontFamily: "times new roman",color: Colors.redAccent,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,),
    );
  }

}