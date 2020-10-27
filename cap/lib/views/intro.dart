import 'package:cap/models/models.dart';
import 'package:cap/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IntroScreen extends StatefulWidget {
  final List<String> images;

  const IntroScreen({Key key, this.images}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
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
