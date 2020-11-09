import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/input_widget.dart';
import 'package:ki_key/shared/widgets/video_widget.dart';
import 'package:ki_key/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => SafeArea(
              child: Scaffold(
                  appBar: AppBar(
                    title: Text('Key:${model.point}'),
                    backgroundColor: mainColor,
                  ),
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      model.searchText.text.isEmpty
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  child: Icon(Icons.play_arrow),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => new AlertDialog(
                                        title: new Text('동영상 광고'),
                                        content: VideoApp(),
                                        actions: <Widget>[
                                          new FlatButton(
                                            onPressed: () =>
                                                Navigator.of(context)
                                                    .pop(false),
                                            child: new Text('닫기'),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ],
                            )
                          : Flexible(
                              child: ListView.builder(
                                itemCount: 100,
                                itemBuilder: (BuildContext context, int index) {
                                  if (index == 0)
                                    return Text("추천");
                                  else if (index == 3)
                                    return Text("검색 결과");
                                  else
                                    return ListTile(
                                      title: Text(
                                          model.searchText.text + "집$index"),
                                      onTap: model.navigateToStore,
                                    );
                                },
                              ),
                            ),
                      InputWidget(
                          controller: model.searchText,
                          hintText: "대리운전 택시 배달 검색",
                          onChanged: (string) {
                            setState(() {});
                          }),
                    ],
                  ),
                  bottomNavigationBar: BottomAppBar(
                      color: mainColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.home), onPressed: () {}),
                          IconButton(
                              icon: Icon(Icons.track_changes),
                              onPressed: () {}),
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
                              icon: Icon(Icons.settings),
                              onPressed: () {
                                model.navigateToOption();
                              }),
                        ],
                      ))),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
