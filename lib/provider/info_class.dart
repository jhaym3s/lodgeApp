import 'package:flutter/material.dart';
class LandLordInfo with ChangeNotifier{
  final String landLordName,address,imageUrl, estateName,houseId;
  final double price;
  bool isFavorite = false;
  List landLordId;

  LandLordInfo({
    this.houseId,
     this.price,
     this.landLordName,
   this.address,
  this.estateName,
   this.imageUrl,
    this.landLordId
  });

  void toggleFavourite(){
    isFavorite = !isFavorite;
    notifyListeners();
  }

}