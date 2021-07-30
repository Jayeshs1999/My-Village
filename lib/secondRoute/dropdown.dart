import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:majhgondegaon/secondRoute/home.dart';
import 'package:majhgondegaon/secondRoute/splash2.dart';
import 'dart:io';

class FirstScreen extends StatefulWidget {

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  bool _loading = false;
  String? _selectedGender=null;

  // void _onLoading() {
  //   setState(() {
  //     _loading = true;
  //     new Future.delayed(new Duration(seconds: 3), _login);
  //   });
  // }
  //
  // Future _login() async{
  //   setState((){
  //     _loading = false;
  //     Navigator.push(context, MaterialPageRoute(builder: (context){
  //       return mainWidget();
  //     }));
  //   });
  // }

  @override
  Widget build(BuildContext context) {



    // var body = new Column(
    //   children: <Widget>[
    //     // new Center(
    //     //   child: new ElevatedButton(
    //     //     onPressed: () {
    //     //       return _onLoading();
    //     //     },
    //     //     child: Text("Click Here"),
    //     //
    //     //   ),
    //     // ),
    //
    //   ],
    // );





    // var bodyProgress = new Container(
    //   child: new Stack(
    //     children: <Widget>[
    //       body,
    //       new Container(
    //         alignment: AlignmentDirectional.center,
    //         decoration: new BoxDecoration(
    //           color: Colors.white70,
    //         ),
    //         child: new Container(
    //           decoration: new BoxDecoration(
    //               color: Colors.redAccent,
    //               borderRadius: new BorderRadius.circular(10.0)
    //           ),
    //           width: 400.0,
    //           height: 200.0,
    //           alignment: AlignmentDirectional.center,
    //           child: new Column(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               new Center(
    //                 child: new SizedBox(
    //                   height: 50.0,
    //                   width: 50.0,
    //                   child: new CircularProgressIndicator(
    //                     value: null,
    //                     strokeWidth: 7.0,
    //                   ),
    //                 ),
    //               ),
    //               new Container(
    //                 margin: const EdgeInsets.only(top: 25.0),
    //                 child: new Center(
    //                   child: new Text(
    //                     "Loading..",
    //                     style: new TextStyle(
    //                         color: Colors.white,
    //                       fontFamily: "times new roman",fontWeight: FontWeight.bold,fontSize: 30,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );









    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
          onPressed: () async{
            return  await showDialog(
                    context: context,
                    builder: (context)=>AlertDialog(
                      title: Text("Are you sure to exit",style: TextStyle(fontFamily: "times new roman",
                          fontSize: 20,fontWeight:FontWeight.bold ),),
                     // content: Text("Are you sure to exit ",style: TextStyle(fontFamily: "times new roman",fontSize: 20),),
                      actions: <Widget>[
                        FlatButton(
                          color: Colors.lightBlueAccent,
                            onPressed: (){
                            Navigator.of(context).pop();
                        },
                            child: Text("Continue",style: TextStyle(fontFamily: "times new roman",fontSize: 20),)
                        ),
                        FlatButton(
                            color: Colors.lightBlueAccent,
                            onPressed: ()=>exit(0),
                            child: Text("Exit",style: TextStyle(fontFamily: "times new roman",fontSize: 20),)
                        )
                      ],
                    )
                );
                
          },
        
        
        child: Icon(Icons.close),
      ),
      appBar: AppBar(
        title: Text('Select Your Village',style: TextStyle(fontFamily: "times new roman"),
        ),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 20,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/roadmain.jpg"),
              fit: BoxFit.cover
            ),
          ),

          // child: Padding(
          //   padding: const EdgeInsets.only(left: 40,right: 10,top: 50),
          //

          child: Column(
            children: <Widget>[


    Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image(image: AssetImage("images/logo2.jpg")),
              ),

              // Container(
              //   decoration: new BoxDecoration(
              //       color: Colors.blue[200]
              //   ),
              //   child: _loading ? bodyProgress : body,
              //
              // ),

              DropdownButton(
                iconEnabledColor: Colors.white,

                dropdownColor: Colors.white,
                value: _selectedGender,
                items: _dropDownItem(),
                onChanged: (value){
                  _selectedGender=value as String?;
                  switch(value){
                    case "Gondegaon" :
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => mainWidget()),
                      );

                     // _onLoading();
                      break;
                    case "Shendurni" : debugPrint("Shendurni");
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => third()),
                    // );
                    break;
                  }
                },
                hint: Text('तुमचे गाव निवडा',style: TextStyle(fontSize: 30,fontFamily: "times new roman",fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ],
          ),
        ),

      ),
    );
  }

  List<DropdownMenuItem<String>> _dropDownItem() {
    List<String> ddl = ["Gondegaon"];
    return ddl.map(
            (value) =>
            DropdownMenuItem(
              value: value,
              child: Text(value,style: TextStyle(fontSize: 30,fontFamily: "times new roman"),),
            )
    ).toList();
  }

  
}



