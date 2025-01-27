// webview/tentang_jajapay.dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

class TentangJajaPayWebview extends StatefulWidget {
  const TentangJajaPayWebview({super.key});

  @override
  State<TentangJajaPayWebview> createState() => _TentangJajaPayWebviewState();
}

class _TentangJajaPayWebviewState extends State<TentangJajaPayWebview> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();

    WebViewPlatform.instance ??= AndroidWebViewPlatform();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://jaja.id/backend/tentang-jaja-id"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebViewWidget(controller: controller),
    );
  }
}
