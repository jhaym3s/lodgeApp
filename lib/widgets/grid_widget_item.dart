import 'package:flutter/material.dart';
import 'package:lodge/screens/detail_page.dart';
import 'package:provider/provider.dart';
import '../provider/info_class.dart';

class GridWidgetItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final landLordInfo = Provider.of<HouseInfo>(context);
    return GridTile(child: Stack(children:[
      GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(DetailPage.routeName,arguments: landLordInfo.houseId);
        },
          child: Image.network(landLordInfo.imageUrl,fit: BoxFit.cover,)),
    IconButton(icon: Icon(landLordInfo.isFavorite?Icons.favorite:Icons.favorite_border,color: Colors.purpleAccent,), onPressed: (){
      landLordInfo.toggleFavourite();
    })
    ],
      alignment: Alignment.topRight,
    ),
    footer: GridTileBar(
      backgroundColor: Colors.black45,
       title: Text(landLordInfo.price.toStringAsFixed(2)),
      subtitle: Text(landLordInfo.address),
    ),
    );
  }
}
