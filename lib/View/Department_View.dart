import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:museum_api_data/controller/museum_Controller.dart';

class DepartmentListView extends StatelessWidget {
  final DepartmentController controller = Get.put(DepartmentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Departments'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (controller.departments.isEmpty) {
          return Center(child: Text('No departments found'));
        } else {
          return ListView.builder(
            itemCount: controller.departments.length,
            itemBuilder: (context, index) {
              final department = controller.departments[index];
              return ListTile(
                title: Text(department.displayName),
                subtitle: Text('ID: ${department.departmentId}'),
              );
            },
          );
        }
      }),
    );
  }
}
