import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/grid_widget_item.dart';
import '../provider/info_provider.dart';

class GridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final extractedHouses = Provider.of<InfoProvider>(context);
    final houses = extractedHouses.houseInfo;
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      childAspectRatio: 4/3, crossAxisSpacing: 10,mainAxisSpacing: 10,crossAxisCount: 2,
    ),itemCount: houses.length, itemBuilder: (context, index) => ChangeNotifierProvider.value(value: houses[index],
    child: GridWidgetItem()),);
  }
}
