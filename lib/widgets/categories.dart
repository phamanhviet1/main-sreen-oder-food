import 'package:flutter/material.dart';
import 'package:flutter_food/models/category.dart';
import 'package:flutter_food/scr/commons.dart';

List<Category> categoriesList = [
  Category(name: "Ice-Cream", image: "ice-cream.png"),
  Category(name: "Beer", image: "pint.png"),
  Category(name: "Salad", image: "salad.png"),
  Category(name: "Sandwich", image: "sandwich.png"),
  Category(name: "Sea Food", image: "fish.png"),
  Category(name: "Steak", image: "steak.png")

];

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (_, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                  children: <Widget>[
                    Container(

                      decoration: BoxDecoration(
                          color: white,
                          boxShadow: [BoxShadow(
                              color: grey,
                              offset: Offset(4,6),
                              blurRadius: 20
                          )
                          ]

                      ) ,
                      child: Padding(padding: EdgeInsets.all(4),child: Image.asset("images/${categoriesList[index].image}",width: 50,),),

                    ),
                    SizedBox(height: 10,),
                    Text( categoriesList[index].name,style: TextStyle(fontSize: 16,color: black),)
                  ],
                ),
              );
            })

    );
  }

}