import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/info_provider.dart';

class DetailPage extends StatefulWidget {
  static const routeName = "detailPage";
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final filteredId = ModalRoute.of(context).settings.arguments as String;
    final product = Provider.of<InfoProvider>(context).findById(filteredId);
    return Scaffold(
      appBar: AppBar(
        title: Text(product.landLordName),
        actions: [
          IconButton(icon: Icon(Icons.message, color: Colors.white,), onPressed: null)
        ],
      ),

    );
  }
}
