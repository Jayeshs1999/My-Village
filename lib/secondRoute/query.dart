

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';


class query extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return addQuery();
  }
}
class addQuery extends State<query>{
 // final Telephony telephony=Telephony.instance;

  var  _formKey=GlobalKey<FormState>();

  TextEditingController nameControl=TextEditingController();
  TextEditingController emailControl=TextEditingController();
  TextEditingController phoneControl=TextEditingController();
  TextEditingController queryControl=TextEditingController();
  var displayResult=" ";
  var _minimumPadding=5.0;
  //int no=8888585093;
 // late DatabaseReference _ref;

  // void initState(){
  //   super.initState();
  //   _ref=FirebaseDatabase.instance.reference().child('Village Project');
  // }

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle= Theme.of(context).textTheme.title;
    return
     Scaffold(
         floatingActionButton: FloatingActionButton(
           onPressed: (){
             Navigator.pop(context);
           },
           child:Icon(Icons.arrow_back),

         ),
      appBar: AppBar(
        title: Text("तक्रार लिहा",),
      ),
      body: Form(
        key: _formKey,
        child: Padding(padding: EdgeInsets.all(_minimumPadding*4),
      child : ListView(
        children: [
          Container(height: 10,),

          Image.asset("images/mail.jpg"),


          InkWell(
            child: ElevatedButton(onPressed: () async{
              await launch('mailto: jayeshsevatkar@gmail.com ');
            },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(20),

                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child:
              Text("Sent Mail to Sarpanch",style: TextStyle(fontSize: 20,fontFamily: "times new roman"),),
            ),
          ),
          Container(height: 10,),

          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: ListTile(
              leading: Icon(Icons.arrow_downward_outlined,color: Colors.red,),
              title: Text("हा फॉर्म तात्पुरता बंद करण्यात आला आहे कृपया तक्रार असल्यास वरील बटन वर क्लिक करू ग्रामपंचायत ला ई-मेल करा ",
                style: TextStyle(fontFamily: "times new roman",color:Colors.red ,fontWeight: FontWeight.bold),),
            )
          ),

          Container(height: 10,),

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
                enabled: false,
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
              enabled: false,
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
              enabled: false,
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
              enabled: false,
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
           // setState(() {

           //  return setSMS();
              // saveHere();
              if(_formKey.currentState!.validate()){
                this.displayResult= _getInfo();
              }

          //  });
          },
            autofocus: false,
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

  //  setSMS() async{
  //   telephony.sendSms(to: phoneControl.text , message: queryControl.text);
  // }
  //

  // void saveHere() {
  //   String name=nameControl.text;
  //   String email=emailControl.text;
  //   String phone=phoneControl.text;
  //   String query=queryControl.text;
  //
  //   Map<String,String> contact={
  //     'name':name,
  //     'email':email,
  //     'phone':'+91'+phone,
  //     'query':query,
  //   };
  //   _ref.push().set(contact);
  // }

}