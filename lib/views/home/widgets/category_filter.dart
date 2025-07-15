import 'package:ai_tools_directory/controllers/tool_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ToolController>();
    final categories = ['All', 'Writing', 'Video', 'SEO', 'Productivity'];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: categories.map((cat) {
          return Obx(() => Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ChoiceChip(
              label: Text(
                cat,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                ),
              ),
              selected: controller.selectedCategory.value == cat,
              selectedColor: Colors.grey,
              backgroundColor: Colors.grey[200],
              labelStyle: TextStyle(
                color: controller.selectedCategory.value == cat
                    ? Colors.white
                    : Colors.black,
              ),
              onSelected: (_) => controller.filterByCategory(cat),
            ),
          ));
        }).toList(),
      ),
    );
  }
}
