import 'package:flutter/material.dart';

class Party {
  String name;
  DateTime date;
  AssetImage picture;
  String description;

  Party(String name, DateTime date, AssetImage picture, String description) {
    this.name = name;
    this.date = date;
    this.picture = picture;
    this.description = description;
  }

  String getName(){
    return this.name;
  }
  DateTime getDate(){
    return this.date;
  }
  AssetImage getPicture(){
    return this.picture;
  }
  String getDescription(){
    return this.description;
  }

}