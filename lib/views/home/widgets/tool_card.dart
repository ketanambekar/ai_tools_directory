import 'package:ai_tools_directory/models/tool.dart';
import 'package:ai_tools_directory/views/home/widgets/try_now_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ToolCard extends StatelessWidget {
  final Tool tool;
  const ToolCard({super.key, required this.tool});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 6),
          )
        ],
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(tool.logoUrl),
              radius: 26,
              backgroundColor: Colors.grey[100],
            ),
            const SizedBox(height: 12),
            Text(
              tool.name,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Expanded(
              child: Text(
                tool.description,
                style: GoogleFonts.poppins(
                  fontSize: 13.5,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 12),
            TryNowButton(url: tool.affiliateUrl),
          ],
        ),
      ),
    );
  }
}
