import 'package:floatingpanel/floatingpanel.dart';
import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:ki_key/shared/widgets/input_widget.dart';
import 'package:ki_key/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
            appBar: AppBar(
              title: Text('Key:${model.point}'),
              backgroundColor: mainColor,
            ),
            body: Stack(
              children: [
                // Add Float Box Panel at the bottom of the 'stack' widget.
                FloatBoxPanel(
                  panelIcon: Icons.live_tv,
                  onPressed: (index) {},
                  buttons: [
                    Icons.play_arrow,
                  ],
                ),
                model.searchText.text.isEmpty ? Container() : Text("여기에 리스트"),
                InputWidget(
                  controller: model.searchText,
                  hintText: "대리운전 택시 배달 검색",
                ),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
                color: mainColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.home), onPressed: () {}),
                    IconButton(
                        icon: Icon(Icons.track_changes), onPressed: () {}),
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
        viewModelBuilder: () => HomeViewModel());
  }
}
