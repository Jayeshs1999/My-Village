

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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child:Icon(Icons.arrow_back),

      ),

      appBar: AppBar(
        title:Text("ग्रामपंचायत",style: TextStyle(fontFamily: "times new roman"),) ,
      ),
      body: Padding(padding: EdgeInsets.all(2),
        child: Container(
          child: ListView(
            children: [
              Image.asset("images/gramimg2.jpg"),
              Divider(thickness: 3.0,color: Colors.blue,),
              Container(height: 10,),
              Container(
                color: Colors.redAccent,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("सभासद मंडळ ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold ),),
                ),
              ),
              Container(height: 10,),
              
              Table(
                border: TableBorder.all(),
                columnWidths: {0:FlexColumnWidth(.2),2:FlexColumnWidth(.5)},
                children: [
                  TableRow(
                    decoration:new BoxDecoration(
                    color: Colors.greenAccent,


              ),

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(child: Text("अ.क.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Center(child: Text("नाव",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(child: Text("पद",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                      )
                    ]
                  ),

                  TableRow(
                      children: [
                        Center(child: Text("१",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                        Text("  श्री. देवानंद सुभाष शिंदे ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                        Center(child: Text("सरपंच",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                      ]
                  ),

                  TableRow(
                      children: [
                        Center(child: Text("२",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                        Text("  श्री. दिलीप अशोक तडवी",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                        Center(child: Text("उपसरपंच ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                      ]
                  ),

                  TableRow(
                      children: [
                        Center(child: Text("३",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                        Text("  श्री.गोविंदा नामदेव मगरे ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                        Center(child: Text("सदस्य",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                      ]
                  ),

                  TableRow(
                      children: [
                        Center(child: Text("४",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                        Text("  सौ.संगीताबाई विलास \n  खाकरे",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                        Center(child: Text("सदस्य",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                      ]
                  ),

                  TableRow(
                      children: [
                        Center(child: Text("५",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                        Text("  सौ.विद्या सुरेश खाकरे",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                        Center(child: Text("सदस्य",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                      ]
                  ),

                  TableRow(
                      children: [
                        Center(child: Text("६",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                        Text("  सौ.लताबाई देविदास \n  जाधव",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                        Center(child: Text("सदस्य",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                      ]
                  ),

                  TableRow(
                      children: [
                        Center(child: Text("७",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                        Text("  सौ.मीराबाई तुकाराम \n  पवार",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                        Center(child: Text("सदस्य",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                      ]
                  ),

                  TableRow(
                      children: [
                        Center(child: Text("८",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                        Text("  सौ.भक्ती विजयानंद \n  कुलकर्णी ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                        Center(child: Text("सदस्य",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                      ]
                  ),

                  TableRow(
                      children: [
                        Center(child: Text("९",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                        Text("  श्री.वसंत प्रल्हाद  राठोड",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                        Center(child: Text("सदस्य",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                      ]
                  ),

                  TableRow(
                      children: [
                        Center(child: Text("१०",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                        Text("  श्री.भिकारी गजानन तडवी",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                        Center(child: Text("शिपाई",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                      ]
                  ),

                  TableRow(
                      children: [
                        Center(child: Text("११",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                        Text("  श्री.तुकाराम सोनू सुलताने",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                        Center(child: Text("पा.पु.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),)),
                      ]
                  ),
                ],
              ),
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
          ),
        ),

      )
    );
  }

}