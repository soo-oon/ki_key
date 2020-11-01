import 'package:floatingpanel/floatingpanel.dart';
import 'package:flutter/material.dart';

class FloatingPanelView extends StatelessWidget {
  final Function onPressed;
  final double positionTop;
  final double positionLeft;

  const FloatingPanelView(
      {Key key, this.onPressed, this.positionTop, this.positionLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Add Float Box Panel at the bottom of the 'stack' widget.
      FloatBoxPanel(
        panelIcon: Icons.live_tv,
        onPressed: (index) {
          onPressed();
        },
        buttons: [
          Icons.play_arrow,
        ],
        positionTop: positionTop,
        positionLeft: positionLeft,
      ),
    ]);
  }
}
