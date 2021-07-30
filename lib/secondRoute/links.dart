import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child:Icon(Icons.arrow_back),

      ),

      appBar: AppBar(
        title:Text("महत्वाच्या लिंक्स ",style: TextStyle(fontFamily: "times new roman"),) ,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/homeback.jpg"),
              fit: BoxFit.cover
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 120,left: 120,bottom: 3),
                  child: Icon(Icons.arrow_drop_down_outlined,size: 80,color: Colors.white,)
                ),
                InkWell(child :
                RaisedButton(onPressed: ()=>launch('http://epaper.lokmat.com',),
                  child: Text("CURRENT NEWS",
                    style: TextStyle(color: Colors.white,fontSize: 17),),
                  color: Colors.blue,
                  elevation: 10,
                ),
                    onTap:()=> launch('',)
                ),

                Padding(

                  padding: const EdgeInsets.only(top: 30,right: 120,left: 120,bottom: 10),
                  child: Image.asset("images/vikas.jpg",width: 10,),
                ),
                InkWell(child :
                RaisedButton(onPressed: ()=>launch('http://epaper.lokmat.com',),
                  child: Text("गावाला मंजूर झालेली कामे पाहण्यासाठी येथे दाबा ",
                    style: TextStyle(color: Colors.white,fontSize: 17),),
                  color: Colors.redAccent,
                  elevation: 10,
                ),
                    onTap:()=> launch('http://epaper.lokmat.com',)
                ),
                Divider(thickness: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 120,left: 120,bottom: 10),
                  child: Image.asset("images/logolink2.jpg",width: 10,),
                ),
                InkWell(child :
                RaisedButton(onPressed: ()=>launch('http://epaper.lokmat.com',),
                  child: Text("घरकुले पाहण्यासाठी येथे दाबा ",
                    style: TextStyle(color: Colors.white,fontSize: 19),),
                  color: Colors.redAccent,
                  elevation: 10,
                ),
                    onTap:()=> launch('http://epaper.lokmat.com',)
                ),

                Divider(thickness: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 100,left: 100,bottom: 10),
                  child: Image.asset("images/logolink3.jpg",width: 10,),
                ),
                InkWell(child :
                RaisedButton(onPressed: ()=>launch('http://epaper.lokmat.com',),
                  child: Text("७/१२ उतारा पाहण्यासाठी येथे दाबा ",
                    style: TextStyle(color: Colors.white,fontSize: 19),),
                  color: Colors.redAccent,
                  elevation: 10,
                ),
                    onTap:()=> launch('http://epaper.lokmat.com',)
                ),

                Divider(thickness: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 100,left: 100,bottom: 10),
                  child: Image.asset("images/mahav.jpg",width: 10,),
                ),
                InkWell(child :
                RaisedButton(onPressed: ()=>launch('http://epaper.lokmat.com',),
                  child: Text("ऑनलाईन बिल भरण्यासाठी येथे दाबा",
                    style: TextStyle(color: Colors.white,fontSize: 19),),
                  color: Colors.redAccent,
                  elevation: 10,
                ),
                    onTap:()=> launch('http://epaper.lokmat.com',)
                ),


                Divider(thickness: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 120,left: 120,bottom: 10),
                  child: Image.asset("images/logolink4.jpg",width: 10,),
                ),
                InkWell(child :
                RaisedButton(onPressed: ()=>launch('http://epaper.lokmat.com',),
                  child: Text("मतदान यादीत नाव शोधण्यासाठी  येथे दाबा ",
                    style: TextStyle(color: Colors.white,fontSize: 19),),
                  color: Colors.redAccent,
                  elevation: 10,
                ),
                    onTap:()=> launch('http://epaper.lokmat.com',)
                ),

                Divider(thickness: 2,),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 120,left: 120,bottom: 10),
                  child: Image.asset("images/logolink4.jpg",width: 10,),
                ),
                InkWell(child :
                RaisedButton(onPressed: ()=>launch('http://epaper.lokmat.com',),
                  child: Text("मतदानाचा फॉर्म भरण्यासाठी  येथे दाबा ",
                    style: TextStyle(color: Colors.white,fontSize: 19),),
                  color: Colors.redAccent,
                  elevation: 10,
                ),
                    onTap:()=> launch('http://epaper.lokmat.com',)
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
        ),
      )
    );
  }

}