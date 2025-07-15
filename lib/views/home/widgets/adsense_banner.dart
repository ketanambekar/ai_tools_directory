// Only works on Flutter Web
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/foundation.dart'; // Needed for kIsWeb
import 'package:flutter/material.dart';

/// Register web view using this (note the web-only access)
import 'dart:ui' as ui; // ✅ This is correct

class AdsenseBanner extends StatelessWidget {
  final String adSlot;
  const AdsenseBanner({super.key, required this.adSlot});

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      // Ads only on web
      return const SizedBox.shrink();
    }

    const viewType = 'adsense-view-type';

    // Register view factory (ONLY on web)
    // ui.platformViewRegistry is web-only
    // So we conditionally access it
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(viewType, (int viewId) {
      final htmlElement = html.DivElement()
        ..innerHtml = '''
          <ins class="adsbygoogle"
               style="display:block"
               data-ad-client="ca-pub-XXXXXXX"
               data-ad-slot="$adSlot"
               data-ad-format="auto"
               data-full-width-responsive="true"></ins>
          <script>
            (adsbygoogle = window.adsbygoogle || []).push({});
          </script>
        ''';

      return htmlElement;
    });

    return const SizedBox(
      height: 100,
      child: HtmlElementView(viewType: viewType),
    );
  }
}
