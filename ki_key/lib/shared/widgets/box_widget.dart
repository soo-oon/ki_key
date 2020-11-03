import 'package:flutter/material.dart';

class BoxWidget extends StatefulWidget {
  final Widget child;
  final double height;
  final double width;
  final Color color;
  final double radius;

  const BoxWidget(
      {Key key,
      this.height,
      this.width,
      this.child,
      this.color = Colors.white,
      this.radius = 15.0})
      : super(key: key);
  @override
  _BoxWidgetState createState() => _BoxWidgetState();
}

class _BoxWidgetState extends State<BoxWidget> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(children: [
      Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(widget.radius)),
        child: widget.child,
      ),
    ]);
  }
}
