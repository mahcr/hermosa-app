import 'package:flutter/material.dart';
import 'package:hermosa_home/core/api/task/category_model.dart';
import 'package:hermosa_home/core/api/task/task_model.dart';
import 'package:hermosa_home/core/api/task/tasks_service.dart';
import 'package:hermosa_home/core/drawer/drawer.dart';
import 'package:hermosa_home/screens/listing_screen.dart';

class AuthPage extends StatefulWidget {
  AuthPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  List<Task> _taskList = [];
  List<Category> _categoryList = [];

  void _getCategories() async {
    final categoryResponse = await TaskMockService().getCategory();
    setState(() {
      _categoryList = categoryResponse;
    });
  }

  void _getTasks(String range) async {
    final taskResponse = await TaskMockService().getTasks(range);
    setState(() {
      _taskList = taskResponse;
    });
  }

  @override
  void initState() {
    super.initState();
    _getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: DrawerMenu(
          options: _categoryList,
          onPressed: _getTasks,
        ),
        body: Listing(list: _taskList));
  }
}
