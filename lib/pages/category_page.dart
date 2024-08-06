import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/backgroundtile.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});

  List<StaggeredTile> _cardTile = <StaggeredTile> [
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
  ];

  List<Widget>_listTile = <Widget> [
    BackGroundTile(backgroundColor: Colors.red, icondata: Icons.home),
    BackGroundTile(backgroundColor: Colors.orange, icondata: Icons.ac_unit),
    BackGroundTile(backgroundColor: Colors.pink, icondata: Icons.landscape),
    BackGroundTile(backgroundColor: Colors.green, icondata: Icons.portrait),
    BackGroundTile(backgroundColor: Colors.deepPurpleAccent, icondata: Icons.music_note),
    BackGroundTile(backgroundColor: Colors.blue, icondata: Icons.access_alarms),
    BackGroundTile(backgroundColor: Colors.indigo, icondata: Icons.satellite_outlined),
    BackGroundTile(backgroundColor: Colors.cyan, icondata: Icons.search_sharp),
    BackGroundTile(backgroundColor: Colors.yellowAccent, icondata: Icons.adjust_rounded),
    BackGroundTile(backgroundColor: Colors.deepOrange, icondata: Icons.attach_money),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
          crossAxisCount: 4,
        staggeredTiles: _cardTile,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _listTile,
      )
    );
  }
}
