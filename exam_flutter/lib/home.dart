import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, bottom: 100.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hi Guy!",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 24.0),
                                child: Text(
                                  "Where are you going next?",
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 160.0,
                    left: 16.0,
                    right: 16.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Tìm kiếm",
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Container(
                        width: 120.0,
                        height: 70.0,
                        color: Colors.deepOrange[100], // Orange background color
                        child: Tab(
                          icon: Image.asset(
                            'assets/images/ico_hotel.png',
                            width: 24.0,
                            height: 24.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 120.0,
                        height: 70.0,
                        color: Colors.red[100], // Green background color
                        child: Tab(
                          icon: Image.asset(
                            'assets/images/ico_plane.png',
                            width: 24.0,
                            height: 24.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 120.0,
                        height: 70.0,
                        color: Colors.green[100], // Red background color
                        child: Tab(
                          icon: Image.asset(
                            'assets/images/ico_hotel_plane.png',
                            width: 24.0,
                            height: 24.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Container(
              //   width: double.infinity,
              //   height: 250,
              //   child: TabBarView(
              //     controller: _tabController,
              //     children: [
              //       Container(
              //         color: Colors.deepOrangeAccent, // Orange background color
              //         child: Center(child: Text("Tab 1 content")),
              //       ),
              //       Container(
              //         color: Colors.redAccent, // Red background color
              //         child: Center(child: Text("Tab 2 content")),
              //       ),
              //       Container(
              //         color: Colors.greenAccent, // Green background color
              //         child: Center(child: Text("Tab 3 content")),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}