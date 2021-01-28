import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/info_provider.dart';
import 'grid_widget.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    final allProducts = Provider.of<InfoProvider>(context).favouritesOnly;

    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: allProducts.isEmpty?Center(
        child: IconButton(icon: Icon(Icons.house_outlined), onPressed: null),
      ): GridWidget()
    );
  }
}
