import 'package:flutter/material.dart';
import 'package:myTreeApp/providers/great_places.dart';
import 'package:provider/provider.dart';
import './screens/places_list_screen.dart';
import './providers/great_places.dart';
import './screens/add_place_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
          title: 'ReForest',
          theme: ThemeData(
              primarySwatch: Colors.green, accentColor: Colors.green[100]),
          home: PlacesListScreen(),
          routes: {
            AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
          }),
    );
  }
}
