import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store/Screen/ForYou/provider/ForYouProvider.dart';
import 'package:provider/provider.dart';

class ForYou extends StatefulWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  ForYouProvider? providertrue;
  ForYouProvider? providerfalse;

  @override
  Widget build(BuildContext context) {
    providertrue = Provider.of<ForYouProvider>(context, listen: true);
    providerfalse = Provider.of<ForYouProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Reccomended for you",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_rounded),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: providerfalse!.ForYouList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: 130,
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    blurStyle: BlurStyle.solid)
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        "${providerfalse!.ForYouList[index].image}",
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                      "${providerfalse!.ForYouList[index].appname}"),
                                ),
                                Text(
                                  "${providerfalse!.ForYouList[index].rating}☆",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Based on recent activity",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_rounded),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: providerfalse!.recentList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: 130,
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    blurStyle: BlurStyle.solid)
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        "${providerfalse!.recentList[index].image}",
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                      "${providerfalse!.recentList[index].appname}"),
                                ),
                                Text(
                                  "${providerfalse!.recentList[index].rating}☆",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child:Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Tools & utilities",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_rounded),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: providerfalse!.ToolsList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            alignment: Alignment.topCenter,
                            height: 130,
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    blurStyle: BlurStyle.solid)
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        "${providerfalse!.ToolsList[index].image}",
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                      "${providerfalse!.ToolsList[index].appname}"),
                                ),
                                Text(
                                  "${providerfalse!.ToolsList[index].rating}☆",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
