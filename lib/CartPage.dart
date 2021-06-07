import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooood_ordering_app/Style.dart';
import 'package:fooood_ordering_app/SuccessPage.dart';
class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cartPage(),
    );
  }
}

class cartPage extends StatefulWidget {
  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    SizedBox(height:100),
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
                        Text("Your Cart",style: TextStyle(
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
                    placesWidget("sushi", "Row Platter"),
                    SizedBox(height:5,),
                    placesWidget("suchi2", "Sushi Platter"),
                    SizedBox(height:5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total (3 items)",style: TextStyle(
                          fontSize: 18,
                          fontWeight:FontWeight.w700 ,
                        ),),
                        Text("\$45",style: TextStyle(
                          fontSize: 16,
                          fontWeight:FontWeight.w700 ,
                        ),),
                      ],
                    ),
                    SizedBox(height:5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("+Taxes",style: TextStyle(
                          fontSize: 16,
                          fontWeight:FontWeight.w500 ,
                          color: Colors.grey,
                        ),),
                        Text("\$2.1",style: TextStyle(
                          fontSize: 16,
                          fontWeight:FontWeight.w500 ,
                          color: Colors.grey,
                        ),),
                      ],
                    ),
                    SizedBox(height:5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("+Delivery Charges",style: TextStyle(
                          fontSize: 16,
                          fontWeight:FontWeight.w500 ,
                          color: Colors.grey,
                        ),),
                        Text("\$3.1",style: TextStyle(
                          fontSize: 16,
                          fontWeight:FontWeight.w500 ,
                          color: Colors.grey,
                        ),),
                      ],
                    ),


                    SizedBox(height:5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Discounts",style: TextStyle(
                          fontSize: 16,
                          fontWeight:FontWeight.w500 ,
                          color: Colors.grey,
                        ),),
                        Text("-\$6.1",style: TextStyle(
                          fontSize: 16,
                          fontWeight:FontWeight.w500 ,
                          color: Colors.grey,
                        ),),
                      ],
                    ),
                    SizedBox(height:5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Payable",style: TextStyle(
                          fontSize: 18,
                          fontWeight:FontWeight.w700,

                        ),),
                        Text("\$102",style: TextStyle(
                          fontSize: 16,
                          fontWeight:FontWeight.w500 ,
                          color: Colors.grey,
                        ),),
                      ],
                    ),
                    SizedBox(height:20,),
                    Text("Have a Promo Code?",style: TextStyle(
                      color: Colors.blue ,
                    ),),
                    SizedBox(height:25,),
                    InkWell(
                      onTap:openSuccessPage,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 50,vertical:15,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: greenBtn,
                        ),
                        child: Text("Check Out",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
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
        SizedBox(width: 10,),
        Row(
          children: [
            Text("Quantity ",style: TextStyle(
              color: black,
              fontSize: 20,
            ),),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10,),
              decoration: BoxDecoration(
                border: Border.all(color:black,),

              ),
              child: Text("1",style: TextStyle(
                fontSize: 13,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),),
            ),
          ],
        ),
      ],
    );

  }
  void openSuccessPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessPage()));
  }

}



