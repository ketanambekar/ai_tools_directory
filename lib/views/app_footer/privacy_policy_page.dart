import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Privacy Policy")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Text(
            '''
We respect your privacy.

- We do not collect personal data unless explicitly provided (e.g. via email signups).
- We use anonymous cookies or analytics to understand user behavior.
- Third-party services (like AdSense or affiliate partners) may use cookies to serve relevant ads.

By using this site, you agree to these terms.

Contact us at hello@aitoolsdirectory.com for any concerns.
            ''',
            style: GoogleFonts.poppins(fontSize: 15.5),
          ),
        ),
      ),
    );
  }
}
