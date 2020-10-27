import 'package:cap/models/models.dart';
import 'package:cap/shared/sharedColors.dart';
import 'package:cap/shared/widgets/ui_helpers.dart';
import 'package:cap/views/option.dart';
import 'package:cap/views/sample_screen.dart';
import 'package:cap/views/start_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'intro.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  KiImage ad = KiImage(image: "assets/images/메인검색-1.jpg");
  Seller seller = Seller();
  int screenCurrnetIndex = 0;

  List<Widget> widgets = [StartView(), Container(), OptionScreen()];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Key:${Provider.of<Point>(context).myPoint}"),
          backgroundColor: mainColor,
        ),
        body: widgets[screenCurrnetIndex],
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                return showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('동영상 광고'),
                    content: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/동영상.png")))),
                  ),
                );
              },
              child: Icon(Icons.live_tv),
            ),
          ],
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniStartDocked,
        bottomNavigationBar: BottomAppBar(
            color: mainColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.home),
                    color: screenCurrnetIndex == 0 ? white : black,
                    onPressed: () {
                      setState(() {
                        screenCurrnetIndex = 0;
                      });
                    }),
                IconButton(
                    icon: Icon(Icons.track_changes),
                    color: screenCurrnetIndex == 1 ? white : black,
                    onPressed: () {
                      setState(() {
                        screenCurrnetIndex = 1;
                      });
                    }),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                IconButton(
                    icon: Icon(Icons.comment),
                    color: screenCurrnetIndex == 2 ? white : black,
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OptionScreen()));
                      });
                    }),
              ],
            )));
  }
}
