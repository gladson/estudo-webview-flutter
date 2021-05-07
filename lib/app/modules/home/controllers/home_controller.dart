// import 'dart:io';

import 'package:get/get.dart';

// import 'package:webview_flutter/webview_flutter.dart';

class HomeController extends GetxController {
  // ignore: todo
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
