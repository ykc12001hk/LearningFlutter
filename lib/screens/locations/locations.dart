import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(title: Text('Locations')),
      body: ListView(
        children:
            locations.map((e) => GestureDetector(
              child: Text(e.name),
              onTap:()=>_onLocationTap(context, e.id) ,
              )).toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID){
    Navigator.pushNamed(context, LocationDetailRoute,arguments: {"id":locationID});
  }
  
}
