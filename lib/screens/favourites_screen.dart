import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/info_provider.dart';
import 'grid_widget.dart';

class FavouritesScreen extends StatefulWidget {
  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
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
