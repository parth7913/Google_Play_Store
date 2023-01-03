import 'package:flutter/material.dart';
import 'package:play_store/Screen/ForYou/provider/ForYouProvider.dart';
import 'package:play_store/Screen/ForYou/view/ForYouScreen.dart';
import 'package:play_store/Screen/TopCharts/view/TopChartsScreen.dart';
import 'package:play_store/Screen/home/view/HomePage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ForYouProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomePage(),
          'FY': (context) => ForYou(),
          'TC': (context) => TopCharts(),
        },
      ),
    ),
  );
}
