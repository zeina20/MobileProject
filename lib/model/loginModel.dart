import 'package:flutter/material.dart';

class Loginmodel{
  
  late String name;
  late String email;

  Loginmodel({required this.name,required this.email}){}
}

List<Loginmodel> L = 
[ Loginmodel(
    name: "Marwan Maged",
    email: "Marwan@gmail.com",
  ),
];