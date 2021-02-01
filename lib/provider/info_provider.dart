
import 'package:flutter/cupertino.dart';

import '../provider/info_class.dart';

class InfoProvider with ChangeNotifier{
  List<HouseInfo> _houseInfo = [
    HouseInfo(
        houseId:"h1",
        price: 5.8,
        imageUrl: "https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8aG91c2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        address: "this is the address",
        estateName:"name of the estate",
        landLordName: "Landlord 1"),
    HouseInfo(
        houseId:"h2",
        price: 5.8,
        imageUrl: "https://images.unsplash.com/photo-1460317442991-0ec209397118?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjl8fGhvdXNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        address: "this is the address",
        estateName:"name of the estate",
        landLordName: "Landlord 2"),
    HouseInfo(
        houseId:"h3",
        price: 5.8,
        imageUrl: "https://images.unsplash.com/photo-1560026301-88340cf16be7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGhvdXNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        address: "this is the address",
        estateName:"name of the estate",
        landLordName: "Landlord 3"),
  ];


  List<HouseInfo> get houseInfo{
    return _houseInfo;
  }

  HouseInfo findById(String houseId){
    return _houseInfo.firstWhere((element) => element.houseId == houseId);
  }

   List<HouseInfo> get favouritesOnly{

   return _houseInfo.where((element) => element.isFavorite).toList();

  }


  }