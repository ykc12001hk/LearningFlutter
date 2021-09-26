import 'package:flutter/material.dart';
import 'package:sampleproject/models/location.dart';
import 'package:sampleproject/widget/location_tile.dart';

class TileOverlay extends StatelessWidget {
  TileOverlay(this.location);

  final Location location;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(color: Colors.black.withOpacity((0.5))),
          child: LocationTile(location: location, darkTheme: true),
        )
      ],
    );
  }
}
