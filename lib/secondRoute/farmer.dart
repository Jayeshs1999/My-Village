import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class farmer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return farmInfo();
  }
}
class farmInfo extends  State<farmer>{

  final List<String> imageList=[
    "images/farmer.jpg",
    "images/crop.jpg",
    "images/water.webp",
    "images/buf.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Farmer",style: TextStyle(fontFamily: "times new roman"),) ,
      ),
      body: ListView(
        children: [
          Image(image: AssetImage("images/shetkari.png"),width: 150,height: 150,),

          CarouselSlider(options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2)
          ),
              items: imageList.map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(e,width: 1000,height: 2000,fit: BoxFit.cover,),
                      
                    ],
                  )

              )).toList()
          ),
          Container(height: 10,),
          Container(

            color: Colors.greenAccent,
            child: Text("आता आपल्या जवळील कृषी केंद्रावर संपर्क साधा ",style: TextStyle(fontSize: 20),),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,

    child: DataTable(
      dataRowHeight: 60,
      headingTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14),
            horizontalMargin: 5,
            columns: [

              DataColumn(label: Text("दुकानाचे नाव")),
              DataColumn(label: Text("दुकानदाराचे नाव")),
              DataColumn(label: Text("फोने नंबर")),
              DataColumn(label: Text("पत्ता")),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("जय साईकृषी\n केंद्र अँड\n इरिगेशन")),
                DataCell(Text("निलेश पाटील")),
                DataCell(Text("888850593")),
                DataCell(Text("Gondegaon")),
              ]),

              DataRow(cells: [
                DataCell(Text("साईदीप\n कृषी केंद्र ")),
                DataCell(Text("राहुल देवरे")),
                DataCell(Text("888850593")),
                DataCell(Text("Gondegaon")),
              ]),

              DataRow(cells: [
                DataCell(Text("जय गजानन\n कृषी केंद्र ")),
                DataCell(Text("भैया पाटील")),
                DataCell(Text("888850593")),
                DataCell(Text("Gondegaon ")),
              ]),


              DataRow(cells: [
                DataCell(Text("Sairam jay\n shriram\n playwood ")),
                DataCell(Text("jayesh sevatjar")),
                DataCell(Text("888850593")),
                DataCell(Text("gondegaon ")),
              ]),

              DataRow(cells: [
                DataCell(Text("Sairam jay\n shriram\n playwood ")),
                DataCell(Text("jayesh sevatjar")),
                DataCell(Text("888850593")),
                DataCell(Text("gondegaon ")),
              ]),

            ],

    ))

        ],
      )
    );
  }

}

