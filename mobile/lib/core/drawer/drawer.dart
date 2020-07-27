import 'package:flutter/material.dart';
import 'package:hermosa_home/core/api/task/category_model.dart';

typedef void ItemPressedCallback(String range);

class DrawerMenu extends StatelessWidget {
  final List<Category> options;

  final ItemPressedCallback onPressed;

  DrawerMenu({@required this.options, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final _tiles = options.map(
      (item) => ListTile(
        title: Text(item.name),
        onTap: () {
          onPressed(item.range);
          Navigator.pop(context);
        },
      ),
    );

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Hermosa'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ..._tiles
        ],
      ),
    );
  }
}
