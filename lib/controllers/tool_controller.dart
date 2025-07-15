import 'package:ai_tools_directory/data/tool_data.dart';
import 'package:ai_tools_directory/models/tool.dart';
import 'package:get/get.dart';

class ToolController extends GetxController {
  var tools = <Tool>[].obs;
  var selectedCategory = ''.obs;

  @override
  void onInit() {
    tools.assignAll(toolsData);
    super.onInit();
  }

  void filterByCategory(String category) {
    if (category == 'All') {
      tools.assignAll(toolsData);
    } else {
      tools.assignAll(toolsData.where((t) => t.category == category));
    }
    selectedCategory.value = category;
  }
}
