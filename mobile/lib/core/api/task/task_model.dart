import 'package:flutter/material.dart';

class Task {
  final int id;
  final String name;
  final String type;

  Task({@required this.id, @required this.name, this.type});
}
