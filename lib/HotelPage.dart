import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:fooood_ordering_app/Style.dart';
import 'package:fooood_ordering_app/CartPage.dart';
class HotelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "mont",
      ),
      home: hotelPage(),
    );
  }
}

class hotelPage extends StatefulWidget {
  @override
  _hotelPageState createState() => _hotelPageState();
}

class _hotelPageState extends State<hotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: blue,
                      image: DecorationImage(
                        image: AssetImage("asset/images/hotelBig.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40),),
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),),
                            IconButton(icon: Icon(Icons.search,color: Colors.white,),),
                          ],
                        ),
                        SizedBox(height:200),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                Text("Yoshimasa Sushi",style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color:Colors.white ,
                                  fontSize: 20,
                                ),),
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.star,color: Colors.white,),
                                    Icon(Icons.star,color: Colors.white,),
                                    Icon(Icons.star,color: Colors.white,),
                                    Icon(Icons.star,color: Colors.white,),
                                    Icon(Icons.star,color: Colors.white,),
                                    Text("250 Reviews",style:TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(Icons.favorite,color: Colors.redAccent,size: 35,),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 15,),
                        Text("Lorem ipsum dolor sit amet is used in print industry",style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),)
                      ],
                    ) ,
                  ),
                  SizedBox(height:15,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Today's Special",style: TextStyle(
                              fontSize:22,
                              fontWeight: FontWeight.w700,
                            ),),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20,),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:20,),
                        placesWidget("food1", "Sushi Platter"),
                        SizedBox(height:20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Dishes",style: TextStyle(
                              fontSize:22,
                              fontWeight: FontWeight.w700,
                            ),),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20,),
                                height: 0.5,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:20,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              dishWidget("sushi","Row Sushi","5 Sushis served in a row"),
                              dishWidget("suchi2","Prato Sushi","5 Sushis served in a row"),
                              dishWidget("sushi3","Sushi Box","5 Sushis served in a row"),
                              dishWidget("sushi4","Row Sushi","5 Sushis served in a row"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Positioned(
              left: 0,
              right:0,
              bottom: 30,
            child: Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Column(
                       children: [
                         InkWell(
                           onTap: openCartPage,
                           child: Container(
                             padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10,),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(25)),
                               color: greenBtn,
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Icon(Icons.add_shopping_cart,
                                   size: 18,
                                   color: Colors.white,
                                 ),
                                 Text("CART",style:TextStyle(
                                   fontWeight: FontWeight.w700,
                                   color: Colors.white,
                                   fontSize: 13,

                                 ),),

                               ],
                             ),
                           ),
                         ),
                         Container(
                           padding: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
                           margin: EdgeInsets.symmetric(horizontal: 10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20),),
                             color: greenBtn.withOpacity(0.7),
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
              ),
          ),
        ],
      ),
    );
  }
  Container dishWidget(String img,String name,String description)
  {
    return Container(
      width: 120,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage("asset/images/$img.png"),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("$name",style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),),
              SizedBox(height: 5,),
              Text("$description",style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical:7,),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(30)) ,
                  border: Border.all(color: black),
                ),
                child: Text("+ Cart"),

              ),
            ],
          ),
        ],
      ),
    );
  }
  Row placesWidget(String img, String name) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/$img.png"),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$name",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),),
              Row(
                children: [
                  Icon(Icons.star,size: 20,color: Colors.orange,),
                  Icon(Icons.star,size: 20,color: Colors.orange,),
                  Icon(Icons.star,size: 20,color: Colors.orange,),
                  Icon(Icons.star,size: 20,color: Colors.orange,),
                  Icon(Icons.star,size: 20,color: Colors.orange,),

                ],
              ),
              Text("Lorem ipsum dolor sit amet is for publishing",style: TextStyle(
                fontSize: 12 ,
              ),),
            ],
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: greenBtn,
            ),
            child: Text("Order Now",style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),),
          ),
        ),
      ],
    );

  }
  void openCartPage(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
  }
}
