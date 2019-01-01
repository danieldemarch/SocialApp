import 'package:flutter/material.dart';

class User {
  String name;
  DateTime date;
  AssetImage picture;
  String description;
  String email;
  String password;

  User(String name, String email, String password) {
    this.name = name;
    this.picture = picture;
    this.email = email;
    this.password = password;
  }

  String getName(){
    return this.name;
  }
  AssetImage getPicture(){
    return this.picture;
  }
  String getDescription(){
    return this.description;
  }
  String getEmail(){
    return this.email;
  }
  String getPassword(){
    return this.password;
  }
}