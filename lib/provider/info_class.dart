import 'package:flutter/material.dart';
class LandLordInfo with ChangeNotifier{
  final String landLordName,address,imageUrl, estateName,id;
  final double price;
  bool isFavorite = false;

  LandLordInfo({
    this.id,
     this.price,
     this.landLordName,
   this.address,
  this.estateName,
   this.imageUrl});

  void toggleFavourite(){
    isFavorite = !isFavorite;
    notifyListeners();
  }
}