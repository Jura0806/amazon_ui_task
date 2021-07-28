import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       elevation: 0,
       backgroundColor: Color(0xFF018197),
       title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             width: 100,
             child: Image(
               image: AssetImage("assets/images/amazon_logo.png"),
               fit: BoxFit.cover,
             ),
           ),
           Row(
             children: [
               IconButton(onPressed: (){},
                   icon: Icon(Icons.mic, color: Colors.white,),
               ),
               IconButton(onPressed: (){},
                 icon: Icon(Icons.shopping_cart, color: Colors.white,),
               )
             ],
           )
         ],
       ),
     ),
      drawer: Drawer(),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            // #search
            Container(
              padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
              color: Color(0xFF018197),
             child: Container(
               height: 50 ,
               padding: EdgeInsets.only( right: 10, left: 10,),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Colors.white,
                 border: Border.all(
                     width: 1,
                     color: Colors.grey
                 ),
               ) ,
               child: Row(
                 children: [
                   Expanded(child: TextField(
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       icon: Icon(Icons.search, color: Color(0xFF018197),),
                       hintText: "What are you looking for?",
                       hintStyle: TextStyle(color: Colors.grey),
                     ),
                   ),
                   ),
                   Icon(Icons.camera_alt, color: Color(0xFF018197),),
                 ],
               ),
             ),
            ),
            Expanded(child: ListView(
              children: [
                // #location
                Container(
                  padding: EdgeInsets.only(right: 5, left: 5),
                  height: 45,
                  color: Colors.blueGrey,
                  child: Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.white,),
                      SizedBox(width: 5,),
                      Text("Deliver to Uzbekistan, Republic of", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                // #reklama
                Container(
                  color: Colors.white,
                  height: 140 ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(70), bottomRight: Radius.circular(70)),
                            image: DecorationImage(
                              image: AssetImage("assets/images/image_1.jpeg"),
                              fit: BoxFit.cover
                            )
                          ),
                      ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        width: 180,
                        child: Center(child: Text("We ship 45 million products", style: TextStyle(fontSize: 16),)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                // #SignIn
                Container(
                  padding: EdgeInsets.only(right: 16, left: 16),
                  height: 160 ,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign in for the best experience", style: TextStyle(fontSize: 18),),
                      SizedBox(height: 15,),
                      Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.orange,
                        child: Center(child: Text("Sign In", style: TextStyle(fontSize: 18),)),
                      ),
                      SizedBox(height: 15,),
                      Text("Create an account", style: TextStyle(color: Colors.blue, fontSize: 18),)
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                // #deal
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Deal of the Day", style: TextStyle(fontSize: 22),),
                      SizedBox(height: 16,),
                      Image(
                        height: 240,
                        width: double.infinity,
                        image: AssetImage("assets/images/item_7.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 16,),
                      Text("Up to 31% off APC UPS Battery Back", style: TextStyle(fontSize: 16),),
                      SizedBox(height: 8,),
                      Text("\$10.99 - \$79.9", style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
                SizedBox(height: 8,),

                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Best sellers in Electronics", style: TextStyle(fontSize: 22)),
                      SizedBox(height: 16,),
                      Container(
                        height: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(child: Image(
                                    image: AssetImage("assets/images/item_1.jpeg"),
                                    fit: BoxFit.cover,
                                  )),
                                  SizedBox(height: 5,),
                                  Expanded(child: Image(
                                    image: AssetImage("assets/images/item_2.jpeg"),
                                    fit: BoxFit.cover,
                                  ))
                                ],
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(child: Image(
                                    image: AssetImage("assets/images/item_3.jpeg"),
                                    fit: BoxFit.cover,
                                  )),
                                  SizedBox(height: 5,),
                                  Expanded(child: Image(
                                    image: AssetImage("assets/images/item_4.jpeg"),
                                    fit: BoxFit.cover,
                                  ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8,),

                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Top products in Camera", style: TextStyle(fontSize: 22)),
                      SizedBox(height: 16,),
                      Container(
                        height: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Expanded(
                                child: Image(
                                    image: AssetImage("assets/images/item_7.jpeg"),
                                    fit: BoxFit.cover,
                                  width: double.infinity,
                                  )),
                            SizedBox(height: 5,),
                            Expanded(
                                child: Row(
                                  children: [
                                  Expanded(
                                    child:  Image(
                                    image: AssetImage("assets/images/item_5.jpeg"),
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                  ),
                                  ),
                                    SizedBox(width: 5,),
                                    Expanded(
                                      child:  Image(
                                        image: AssetImage("assets/images/item_6.jpeg"),
                                        fit: BoxFit.cover,
                                        height: double.infinity,
                                      ),
                                    )


                                  ],
                                )),

                          ],
                        ),
                      )
                    ],
                  ),
                ),


              ],
            ))
          ],
        ) ,
      ),
    );
  }
}
