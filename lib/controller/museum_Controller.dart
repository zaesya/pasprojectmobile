import 'package:get/get.dart';
import 'package:museum_api_data/ApiService/api_service.dart';
import 'package:museum_api_data/model/museum_Model.dart';

class DepartmentController extends GetxController {
  var isLoading = true.obs;
  var departments = <Department>[].obs;

  @override
  void onInit() {
    fetchDepartments();
    super.onInit();
  }

  void fetchDepartments() async {
    try {
      isLoading(true);
      var response = await ApiService().fetchDepartments();
      departments.assignAll(response);
    } catch (e) {
      print("Error fetching departments: $e");
    } finally {
      isLoading(false);
    }
  }
}
