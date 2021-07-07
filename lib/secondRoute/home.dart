import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dropDown extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return dropDownButton();
  }
}
class dropDownButton extends State<dropDown>{
  @override
  String dropDownValue="select";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down Button"),
      ),
      body: Align(
        alignment: Alignment.center,
      child: Column(
        children: [
          DropdownButton<String>(
            value: dropDownValue,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 20,
            elevation: 16,
            style: const TextStyle(
              color: Colors.purple,),
            underline: Container(
              height:1,
              color: Colors.red,
            ),
            onChanged: (String ? newValue) async {
              setState(() {
                dropDownValue=newValue!;
              });
            },
            items: <String>['select','Gondegaon','Shendurni']
                .map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );

            }).toList(),
          ),
        ],
      ),
    ));
  }
}