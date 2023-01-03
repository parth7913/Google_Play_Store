import 'package:flutter/cupertino.dart';
import 'package:play_store/Screen/ForYou/model/ForYouModel.dart';

class ForYouProvider extends ChangeNotifier {
  List<ForYouModel> ForYouList = [
    ForYouModel(
        image: "assets/images/instagram.jpg",
        appname: "Instagram",
        rating: 4.3),
    ForYouModel(
        image: "assets/images/facebook.png", appname: "Facebook", rating: 4.1),
    ForYouModel(
        image: "assets/images/spotify.png", appname: "Spotify", rating: 4.3),
    ForYouModel(
        image: "assets/images/lite.webp", appname: "Instagram Lite", rating: 4),
    ForYouModel(
        image: "assets/images/twitter.png", appname: "Twitter", rating: 4.2),
  ];
  List<ForYouModel> recentList = [
    ForYouModel(
        image: "assets/images/googleassistant.png",
        appname: "Google Assistant",
        rating: 4),
    ForYouModel(
        image: "assets/images/fit.png", appname: "Google Fit", rating: 4.2),
    ForYouModel(
        image: "assets/images/docs.png", appname: "Google Docs", rating: 4.3),
    ForYouModel(
        image: "assets/images/light.png", appname: "Lightroom Photo", rating: 4.4),
  ];
  List<ForYouModel> ToolsList = [
    ForYouModel(
        image: "assets/images/googleassistant.png",
        appname: "Google Assistant",
        rating: 4),
    ForYouModel(
        image: "assets/images/facebook.png", appname: "Facebook", rating: 4.4),
    ForYouModel(
        image: "assets/images/spotify.png", appname: "Spotify", rating: 4),
    ForYouModel(
        image: "assets/images/lite.webp", appname: "Instagram Lite", rating: 4),
  ];
}
