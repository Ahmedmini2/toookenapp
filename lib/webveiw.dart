import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
class MainPage extends StatelessWidget {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      title: const Text('Toooken' ,  style: TextStyle(fontFamily: 'BankGR',fontSize: 20),),
      actions: [
        IconButton(onPressed: (){
          controller.goBack();
        },

            icon: Icon(Icons.arrow_back))
      ],
    ),
    body: WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://www.toooken.com/club/',
      onWebViewCreated: (controller){
        this.controller = controller;
      },
    ),
  );


}