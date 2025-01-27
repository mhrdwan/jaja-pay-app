// webview/syarat_ketentuan.dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

class SyaratKetentuan extends StatefulWidget {
  const SyaratKetentuan({super.key});

  @override
  State<SyaratKetentuan> createState() => _SyaratKetentuanState();
}

class _SyaratKetentuanState extends State<SyaratKetentuan> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();

    WebViewPlatform.instance ??= AndroidWebViewPlatform();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://jaja.id/backend/syarat-ketentuan"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebViewWidget(controller: controller),
    );
  }
}
