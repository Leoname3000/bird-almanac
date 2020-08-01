import 'package:flutter/material.dart';
import 'package:bird_almanac/data_model/bird.dart';

class BirdTile extends StatelessWidget {
  final Bird bird;
  BirdTile({Key key, this.bird}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(bird.imageURL),
      ),
      title: Text(bird.name),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
