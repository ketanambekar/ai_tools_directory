import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Terms & Conditions")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Text(
            '''
By using this site, you agree to:

1. Use the content for personal or research purposes only.
2. Not copy or distribute content without permission.
3. Understand that AI Tools Directory provides third-party tools and we are not liable for their performance or terms.

These terms may be updated occasionally. Continued use implies agreement with the latest version.
            ''',
            style: GoogleFonts.poppins(fontSize: 15.5),
          ),
        ),
      ),
    );
  }
}
