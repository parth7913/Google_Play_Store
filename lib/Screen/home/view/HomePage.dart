import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store/Screen/ForYou/view/ForYouScreen.dart';
import 'package:play_store/Screen/TopCharts/view/TopChartsScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.white,
                      spreadRadius: 2,
                      blurRadius: 10,
                      blurStyle: BlurStyle.solid)
                ],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12),
              ),
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Serch For Apps & Games",
                        border: InputBorder.none),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mic_none_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            bottom: TabBar(
              labelColor: Colors.green,
              indicatorColor: Colors.green,
              tabs: [
                Tab(
                  text: "For You",
                ),
                Tab(
                  text: "Top Charts",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ForYou(),
              TopCharts(),
            ],
          ),
        ),
      ),
    );
  }
}
