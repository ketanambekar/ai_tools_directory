import 'package:ai_tools_directory/controllers/tool_controller.dart';
import 'package:ai_tools_directory/views/app_footer/app_footer.dart';
import 'package:ai_tools_directory/views/home/widgets/adsense_banner.dart';
import 'package:ai_tools_directory/views/home/widgets/category_filter.dart';
import 'package:ai_tools_directory/views/home/widgets/tool_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ToolController());

    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          '🚀 AI Tools for Creators',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ),
      body: Column(
        children: [
          const CategoryFilter(),
          Expanded(
            child: Obx(() {
              return GridView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                itemCount: controller.tools.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 240,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return ToolCard(tool: controller.tools[index]);
                },
              );
            }),
          ),
          const AppFooter(),
        ],
      ),
      bottomNavigationBar: const AdsenseBanner(adSlot: '1234567890'),
    );
  }
}
