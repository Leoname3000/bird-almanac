import 'package:flutter/material.dart';

import 'package:bird_almanac/components/bird_tile.dart';
import 'package:bird_almanac/data_model/bird.dart';

import 'dart:convert';

void main() => runApp(MyApp());

Future<List<Bird>> getBirds(BuildContext context) async {
  String jsonStr =
      await DefaultAssetBundle.of(context).loadString('lib/data/data.json');

  var json = jsonDecode(jsonStr);
  var array = json["birds"] as List<dynamic>;
  var birds = array.map((e) => Bird.fromJson(e)).toList();

  return birds;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Альманах',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Альманах"),
        ),
        body: FutureBuilder<List<Bird>>(
          future: getBirds(context),
          builder: (context, snapshot) {
            return ListView(
              children: snapshot.data
                  .map(
                    (bird) => BirdTile(bird: bird),
                  )
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
