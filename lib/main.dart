import 'package:flutter/material.dart';
import 'package:my_todolist_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

import './screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

