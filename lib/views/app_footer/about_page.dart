import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Text(
            '''
AI Tools Directory is a curated platform listing powerful AI tools for creators, marketers, and developers.

🚀 Our mission:
To help you discover the most effective AI products to boost productivity and creativity.

💼 Affiliate Disclosure:
Some of the tools listed may include affiliate links. We may earn a commission if you purchase through those links — at no additional cost to you.

Built with ❤️ using Flutter Web.
            ''',
            style: GoogleFonts.poppins(fontSize: 15.5),
          ),
        ),
      ),
    );
  }
}
