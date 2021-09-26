// app.dart

import 'package:flutter/material.dart';
import 'package:sampleproject/screens/location_detail/location_detail.dart';
import 'package:sampleproject/style.dart';
import 'screens/locations/locations.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: _routes(), home: Locations(), theme: _theme());
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments =
          settings.arguments as Map<String, dynamic>;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme:
            AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
        textTheme: TextTheme(
            headline6: TitleTextStyle,
            subtitle2: SubTitleTextStyle,
            caption: CaptionTextStyle,
            bodyText2: Body1TextStyle));
  }
}
