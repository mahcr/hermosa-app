import 'package:flutter/material.dart';

class Category {
  final int id;
  final String name;
  final String range;
  final String type;

  Category({@required this.id, @required this.name, this.range, this.type});
}
