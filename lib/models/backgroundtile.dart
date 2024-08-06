import 'package:flutter/material.dart';
class BackGroundTile extends StatelessWidget {
  final backgroundColor;
  final icondata;
  const BackGroundTile({super.key,required this.backgroundColor,required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(icondata,size: 34,),
    );
  }
}
