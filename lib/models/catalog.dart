import 'package:flutter/material.dart';

class Catalogmodel{
  static List<Item> items=[
    Item(
        id: 70061,
        name: "iphone 12 pro",
        desc: "12th gen",
        price: 999,
        color: "#33505a",
        image: "https://www.apple.com/newsroom/images/product/iphone/standard/Apple_announce-iphone12pro_10132020_big.jpg.large.jpg"
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({ required this.id,required this.name,required this.desc,required this.price, required this.color, required this.image});

  factory Item.fromMap(Map<dynamic,dynamic> map){
    return Item(
        id : map["id"],
        name : map["name"],
        desc : map["desc"],
        price : map["price"],
        color : map["color"],
        image : map["image"],
    );
  }
  toMap() =>{

    "id" : id,
    "name" : name,
    "desc" : desc,
    "price" : price,
    "color" : color,
    "image" : image,
  };
}
