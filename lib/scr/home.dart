
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/scr/commons.dart';
import 'package:flutter_food/widgets/categories.dart';
import 'package:flutter_food/widgets/featured_products.dart';
class Home extends StatefulWidget{
  @override
  _HomeState  createState() => _HomeState();

}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[


              Padding(padding: const EdgeInsets.all(8.0),
                           child: Text("What would you like to eat?",style: TextStyle(fontSize: 18),),
               ),
              Stack(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.notifications_none), onPressed: (){}),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(height: 10,width: 10 ,decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(20)
                    ),),
                  )
                ],
              )



          ],),
            SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                color: white,
                boxShadow: [BoxShadow(
                  color: grey,
                  offset: Offset(1,1),
                  blurRadius: 4
                )
                  ]
              ),
              child: ListTile(
                leading: Icon(Icons.search,color: red,),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "Find food and restaurant",
                   border: InputBorder.none
                  ),
                ),
                trailing: Icon(Icons.filter_list,color: red,),
              )
              ),
            SizedBox(height: 5,),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Featured",style: TextStyle(fontSize: 16,color: grey),),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Popular",style: TextStyle(fontSize: 16,color: grey),),
            ),
            Stack(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("images/food.jpg"),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          child: Stack(
                            children: <Widget>[
                              Icon(Icons.favorite,color: red),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Icon(Icons.favorite,color: white,size: 12,),
                              )
                            ],
                          ),),
                    ),
                    Padding(padding: EdgeInsets.only(right: 20),
                        child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                            child: Row(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.star,color: Colors.yellow,size: 20,),
                              ),
                              Text("4.5")
                            ],
                          
                        ),
                    ),)

                ],),
                Positioned.fill(

                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.all(20.0),
                                  child: RichText(text: TextSpan(children:[
                          TextSpan(text: "Pancakes\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: white)),
                          TextSpan(text: "by: ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: white)),
                          TextSpan(text: "Pizza hut",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: white)),

                           ], style: TextStyle(color: black)
                        )
                        ),
                      ),
                            Padding(
                                padding: const EdgeInsets.all(10.0),
                                   child: RichText(text: TextSpan(children:[
                                     TextSpan(text: "\$12.99\n" ,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: white)),


                        ], style: TextStyle(color: black)
                        )
                        ),
                      ),
                  ],
                ),
                    ))
              ],

            )





           ]

      )
    ),
      bottomNavigationBar: Container(
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/home.png",width: 26 ,height: 26,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/avatar.png",width: 26 ,height: 26,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/target.png",width: 26 ,height: 26,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/shopping-bag.png",width: 26 ,height: 26,),
          ),

        ],),
      ),
    );




  }

}

