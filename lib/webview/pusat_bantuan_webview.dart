// webview/pusat_bantuan_webview.dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

class PusatBantuanWebview extends StatefulWidget {
  const PusatBantuanWebview({super.key});

  @override
  State<PusatBantuanWebview> createState() => _PusatBantuanWebviewState();
}

class _PusatBantuanWebviewState extends State<PusatBantuanWebview> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();

    WebViewPlatform.instance ??= AndroidWebViewPlatform();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://jaja.id/backend/help"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebViewWidget(controller: controller),
    );
  }
}
