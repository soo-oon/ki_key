import 'package:flutter/material.dart';

import '../sharedColors.dart';

class StarsWidget extends StatefulWidget {
  final double size;
  final int score;

  const StarsWidget({Key key, this.size, this.score = 5}) : super(key: key);
  @override
  _StarsWidgetState createState() => _StarsWidgetState();
}

class _StarsWidgetState extends State<StarsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: widget.score < 1 ? black : red,
          size: widget.size,
        ),
        Icon(
          Icons.star,
          color: widget.score < 2 ? black : red,
          size: widget.size,
        ),
        Icon(
          Icons.star,
          color: widget.score < 3 ? black : red,
          size: widget.size,
        ),
        Icon(
          Icons.star,
          color: widget.score < 4 ? black : red,
          size: widget.size,
        ),
        Icon(
          Icons.star,
          color: widget.score == 5 ? red : black,
          size: widget.size,
        ),
      ],
    );
  }
}
