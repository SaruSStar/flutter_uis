import 'package:flutter/material.dart';
import 'package:zoomable_image/zoomable_image.dart';

class CodeView extends StatefulWidget {
  final String code;
  CodeView(this.code);
  @override
  _CodeViewState createState() => _CodeViewState();
}

class _CodeViewState extends State<CodeView> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ZoomableImage(AssetImage(widget.code)),
    );

  }
}
