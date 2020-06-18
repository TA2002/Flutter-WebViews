import 'package:flutter/material.dart';
import 'web_view_container.dart';
class HomeMaterial extends StatelessWidget {
  final _links = ['https://google.com', 'https://vk.com', 'https://instagram.com', 'https://facebook.com'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _links.map((link) => _urlButton(context, link)).toList( )
          ),
        ),
      ),
    );
  }
  Widget _urlButton(BuildContext context, String url) {
    return Container(
      padding: EdgeInsets.all(5),
      child:  FlatButton(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        child: Text(url),
        onPressed: (){
          _handleURLButtonPress(context, url);
        },
      ),
    );
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}