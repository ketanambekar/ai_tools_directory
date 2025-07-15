import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TryNowButton extends StatelessWidget {
  final String url;
  const TryNowButton({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () => launchUrlString(url),
        icon: const Icon(Icons.rocket_launch_rounded, size: 18),
        label: Text(
          'Try Now',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 14.5,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: isDark
              ? const Color(0xFF6366F1)
              : const Color(0xFF4F46E5),
          foregroundColor: Colors.white,
          elevation: 6,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      )
          .animate()
          .fadeIn(duration: 500.ms)
          .scaleXY(end: 1.02, duration: 300.ms, curve: Curves.easeOut),
    );
  }
}
