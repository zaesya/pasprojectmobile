import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:museum_api_data/View/Department_View.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( 
      title: 'Museum Departments',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DepartmentListView(), 
    );
  }
}
