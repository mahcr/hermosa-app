import 'package:flutter/material.dart';
import 'package:hermosa_home/core/api/task/task_model.dart';

class Listing extends StatelessWidget {
  Listing({@required this.list});

  final List<Task> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                list[index].name,
                style: TextStyle(fontSize: 18),
              ),
              Text(
                list[index].type,
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
