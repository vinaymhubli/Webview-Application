import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_call/widget/text_widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebHome extends StatefulWidget {
  WebHome({Key? key}) : super(key: key);

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  late WebViewController _controller;
  @override
  void initState() {
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light
        ),
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: appbartitle(context),
      ),
      body: Center(
     child: WebView(  
      initialUrl:"https://boostmysites.com/",
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController){
        _controller=webViewController;
      },
     ),
      ),
    );
  }
}