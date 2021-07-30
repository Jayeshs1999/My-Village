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
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child:Icon(Icons.arrow_back),

        ),

      appBar: AppBar(
        title:Text("शेतीविषयक",style: TextStyle(fontFamily: "times new roman"),) ,
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
            child: Text("आता आपल्या जवळील कृषी केंद्रावर संपर्क साधा ",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
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

    )),

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
      )
    );
  }

}
