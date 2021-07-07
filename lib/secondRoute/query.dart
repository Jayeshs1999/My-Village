

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class query extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return addQuery();
  }
}
class addQuery extends State<query>{

  var _formKey=GlobalKey<FormState>();

  TextEditingController nameControl=TextEditingController();
  TextEditingController emailControl=TextEditingController();
  TextEditingController phoneControl=TextEditingController();
  TextEditingController queryControl=TextEditingController();
  var displayResult=" ";
  var _minimumPadding=5.0;

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle= Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        title: Text("तक्रार लिहा",),
      ),
      body: Form(
        key: _formKey,
        child: Padding(padding: EdgeInsets.all(_minimumPadding*4),
      child : ListView(
        children: [
          Container(
            color: Colors.greenAccent,
            alignment: Alignment.center,
            child: Text("तुमची तक्रार पाठवा",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          ),
          Container(height: 10,),
          Divider(thickness: 5,color: Colors.redAccent,),
          Container(height: 10,),

          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextFormField(
                style: textStyle,
                controller: nameControl,
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Please Enter Your Name';
                  }
                },
                decoration: InputDecoration(
                  labelText: "नाव",
                  hintText: "तुमचे नाव टाका  ",
                    errorStyle: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 15.0,
                        fontFamily: "times new roman"
                    ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: TextFormField(
              style: textStyle,
              controller: emailControl,
              validator: (value) {
                if(value!.isEmpty){
                  return 'please Enter E-mail';
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "ई-मेल",
                  hintText: "ई-मेल टाका ",
                  errorStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 15.0,
                      fontFamily: "times new roman"
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )
              ),
            ),
          ),
          Padding(

            padding: const EdgeInsets.only(top: 10.0),
            child: TextFormField(
              style: textStyle,
              controller: phoneControl,
              validator: (value) {
                if(value!.isEmpty){
                  return 'Please Enter Your phone number';
                }
              },
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  labelText: "फोन नंबर",
                  hintText: "फोन नंबर टाका ",
                  errorStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 15.0,
                      fontFamily: "times new roman"
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: TextFormField(
              style: textStyle,
              maxLines: 8,
              controller: queryControl,
              validator: (value) {
                if(value!.isEmpty){
                  return 'Please Enter Your query';
                }
              },
              decoration: InputDecoration(
                alignLabelWithHint: true,
                  labelText: "तक्रार",
                  hintText: "तक्रार लिहा ",
                  errorStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 15.0,
                    fontFamily: "times new roman"
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: RaisedButton(onPressed: (){
            setState(() {
              if(_formKey.currentState!.validate()){
                this.displayResult= _getInfo();
              }

            });
          },
            color: Theme.of(context).accentColor,
            textColor: Theme.of(context).primaryColorLight,
          child: Text("पाठवा",style: TextStyle(fontFamily: "times new roman",color: Colors.white),textScaleFactor: 1.5,),
          ),
        ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(this.displayResult,style: textStyle,),
            ),



        ],
      ),
    )));
  }

  String _getInfo() {
    String result="Query Successfully Submitted";
    return result;
  }

}