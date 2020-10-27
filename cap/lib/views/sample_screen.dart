import 'package:cap/shared/sharedColors.dart';
import 'package:flutter/material.dart';

class SampleScreen extends StatefulWidget {
  final String appbarTitle;
  final List<String> images;

  const SampleScreen({Key key, this.appbarTitle, this.images})
      : super(key: key);
  @override
  _SampleScreenState createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appbarTitle),
        backgroundColor: mainColor,
      ),
      body: GestureDetector(
        onDoubleTap: () {
          setState(() {
            if (index > 0) index--;
          });
        },
        onTap: () {
          setState(() {
            if (index < widget.images.length - 1) index++;
          });
        },
        child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(widget.images[index])))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.backspace),
      ),
    );
  }
}
