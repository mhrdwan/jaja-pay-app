// webview/kebijakan_webview.dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

class KebijakanWebview extends StatefulWidget {
  const KebijakanWebview({super.key});

  @override
  State<KebijakanWebview> createState() => _KebijakanWebviewState();
}

class _KebijakanWebviewState extends State<KebijakanWebview> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();

    WebViewPlatform.instance ??= AndroidWebViewPlatform();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://jaja.id/backend/kebijakan-privasi"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebViewWidget(controller: controller),
    );
  }
}
