import 'package:flutter/material.dart';
import 'package:flutter_food/models/products.dart';
import 'package:flutter_food/scr/commons.dart';
List<Product> productList =[
  Product(name:"Cereals" , image:"1.jpg", rating:4.2, vendor:"Good Food", wishList:true, price:5.99),
  Product(name:"Tacos" , image:"2.jpg", rating:4.2, vendor:"Good Food", wishList:false, price:5.99),
  Product(name:"Cereals" , image:"3.jpg", rating:4.2, vendor:"Good Food", wishList:true, price:5.99),
  Product(name:"Cereals" , image:"4.jpeg", rating:4.2, vendor:"Good Food", wishList:true, price:5.99),
  Product(name:"Cereals" , image:"5.jpg", rating:4.2, vendor:"Good Food", wishList:false, price:5.99),

];

class Featured extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
          itemBuilder: (_,index){
            return Padding(padding: EdgeInsets.all(8),
              child: Container(height: 220,width: 200,decoration: BoxDecoration(
                  color: white,
                  boxShadow: [BoxShadow(
                      color: grey,
                      offset: Offset(1,1),
                      blurRadius: 4
                  )]
              ),
                child: Column(
                  children: <Widget>[
                    Image.asset("images/${productList[index].image}",height: 140,width: 140,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(8),
                            child: Text(productList[index].name)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: productList[index].wishList ? Icon(Icons.favorite,size: 18,color: red,) : Icon(Icons.favorite_border,size: 18,color: red,)
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(

                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("${productList[index].rating}",style: TextStyle(fontSize: 14,color: grey),),
                            ),
                            SizedBox(height: 1,),
                            Icon(Icons.star,color: red,size: 14,),
                            Icon(Icons.star,color: red,size: 14,),
                            Icon(Icons.star,color: red,size: 14,),
                            Icon(Icons.star,color: red,size: 14,),
                            Icon(Icons.star,color: grey,size: 14,),
                          ],),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("\$${productList[index].price}",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ],
                    )



                  ],
                ),
              ),
            );
          }),
    );
  }

}