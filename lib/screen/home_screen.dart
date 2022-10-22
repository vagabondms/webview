import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final String homeUrl = 'https://blog.codefactory.ai';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              if(controller == null){
                return ;
              }
              controller!.loadUrl(homeUrl);
            },
            icon: Icon(Icons.home),
          )
        ],
        backgroundColor: Colors.orange,
        title: Text('webview'),
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
