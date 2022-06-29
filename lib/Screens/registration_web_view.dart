import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  WebViewController controller;
  double webProgress = 0;

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          if (await controller.canGoBack()) {
            controller.goBack();

            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: Icon(Icons.refresh_sharp),
                onPressed: () => controller.reload(),
              )
            ],
          ),
          body: Container(
            color: Colors.grey,
            child: Column(
              children: [
                webProgress < 1
                    ? SizedBox(
                        height: 5,
                        child: LinearProgressIndicator(
                          value: webProgress,
                          color: Colors.red,
                          backgroundColor: Colors.black,
                        ),
                      )
                    : SizedBox(),
                Expanded(
                  child: WebView(
                      javascriptMode: JavascriptMode.unrestricted,
                      initialUrl: 'https://surokkha.gov.bd/', // registration link
                      onWebViewCreated: (controller) {
                        this.controller = controller;
                      },
                      onProgress: (progress) => setState(() {
                            this.webProgress = progress / 100;
                          })),
                ),
              ],
            ),
          ),
        ),
      );
}
