import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/models.dart';
import 'views/views.dart';

void main() {
  runApp(new MultiProvider(providers: [
    Provider<bool>.value(
      value: true,
    ),
    ChangeNotifierProvider(
      create: (_) => Point(),
    ),
    ChangeNotifierProvider(
      create: (_) => Seller(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
