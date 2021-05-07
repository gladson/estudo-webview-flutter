import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../controllers/home_controller.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  InAppWebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: InAppWebView(
          initialUrlRequest: URLRequest(
              url: Uri.parse(
            'https://www.openstreetmap.org/directions?engine=fossgis_osrm_car&route=-8.8185%2C-63.8128%3B-8.7994%2C-63.8846',
          )),
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform:
                InAppWebViewOptions(mediaPlaybackRequiresUserGesture: false),
          ),
          onWebViewCreated: (InAppWebViewController controller) {
            webViewController = controller;
          },
          androidOnPermissionRequest: (InAppWebViewController controller,
              String origin, List<String> resources) async {
            return PermissionRequestResponse(
                resources: resources,
                action: PermissionRequestResponseAction.GRANT);
          }),
      // child: WebView(
      //   initialUrl:
      //       // 'https://www.google.com/maps/dir/?api=1&origin=Space+Needle+Seattle+WA&destination=Pike+Place+Market+Seattle+WA&travelmode=car',
      //       // 'https://www.openstreetmap.org/directions?engine=fossgis_osrm_car&route=-8.8185%2C-63.8128%3B-8.7994%2C-63.8846',
      //       'http://192.168.0.108:8000/maps/zoom/15/point-a/-8.804774334594667/-63.80283109549604/point-b/-8.804479500278784/-63.880724611073624/',
      //   javascriptMode: JavascriptMode.unrestricted,
      // ),
    );
  }
}
