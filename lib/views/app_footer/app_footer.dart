import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey.shade900 : Colors.grey.shade100,
        border: Border(
          top: BorderSide(color: Colors.grey.withOpacity(0.15)),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          return isMobile
              ? Column(
            children: [
              _navLinks(),
              const SizedBox(height: 12),
              _copyright(),
            ],
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _copyright(),
              _navLinks(),
            ],
          );
        },
      ),
    );
  }

  Widget _navLinks() {
    return Wrap(
      spacing: 24,
      children: [
        TextButton(
          onPressed: () => Get.toNamed('/about'),
          child: const Text('About'),
        ),
        TextButton(
          onPressed: () => Get.toNamed('/privacy-policy'),
          child: const Text('Privacy'),
        ),
        TextButton(
          onPressed: () => Get.toNamed('/terms'),
          child: const Text('Terms'),
        ),
      ],
    );
  }

  Widget _copyright() {
    return Text(
      '© ${DateTime.now().year} AI Tools Directory',
      style: GoogleFonts.poppins(
        fontSize: 13.5,
        color: Colors.grey.shade600,
      ),
    );
  }
}
