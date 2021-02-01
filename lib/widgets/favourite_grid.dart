import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/info_provider.dart';
import '../screens/detail_page.dart';
import '../widgets/grid_widget_item.dart';

class FavouriteGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final extractedHouses = Provider.of<InfoProvider>(context);
    final houses = extractedHouses.favouritesOnly;
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      childAspectRatio: 4/3, crossAxisSpacing: 10,mainAxisSpacing: 10,crossAxisCount: 2,
    ),itemCount: houses.length, itemBuilder: (context, index) => ChangeNotifierProvider.value(value: houses[index],
        child: GridWidgetItem()),);
  }
}
