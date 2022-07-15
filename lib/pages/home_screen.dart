import 'package:flutter/material.dart';

import '../widgets/curve_clipper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _getStartedData = [
    {
      "id": "1",
      "title": "Post an ad for your search",
      "desc": "Let others know about your search to get the most out of SpareRoom. You could get twice as many replies",
      "action": "Post ad",
      "completed": false,
      "icon": Icons.list
    },
    {
      "id": "2",
      "title": "Add a profile photo",
      "desc": "Recommended, but not required. It'll make finding a flatmate more authentic, personal and trustworthy",
      "action": "Add Photo",
      "completed": false,
      "icon": Icons.person
    },
    {
      "id": "3",
      "title": "Confirm your email",
      "desc": "Have we got your email right? If so, it'll only take a few tabs to confirm",
      "action": "Confirm Email",
      "completed": true,
      "icon": Icons.alternate_email
    },
    {
      "id": "4",
      "title": "Get notified",
      "desc": "Time matters when competition is fierce. Get alerted to new messages, so you don't miss out.",
      "action": "Enable Notifications",
      "completed": true,
      "icon": Icons.notifications
    },
  ];
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          letterSpacing: -1.2,
          fontSize: 24.0
        ),
        centerTitle: true,
        title: const Text("SpareRoom"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0, bottom: 10.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "GOOD MORNING",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 0.5
                    )
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Kartik B.",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Text(
                            "kartikbhargava4@gmail.com",
                            style: TextStyle(
                                color: Colors.grey
                            )
                          ),
                        ],
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text(
                          "KB",
                          style: TextStyle(
                            color: Colors.grey[900]
                          )
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Imperial_Hotel_Osaka_regular_floor_standard_twin_room_20120630-001.jpg/1200px-Imperial_Hotel_Osaka_regular_floor_standard_twin_room_20120630-001.jpg"
                            ),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.blue.shade900.withOpacity(0.9),
                              Colors.blue.shade600.withOpacity(0.9)
                            ]
                          )
                        ),
                      ),
                      const Positioned(
                        top: 8,
                        left: 8,
                        child: Icon(
                          Icons.search,
                          size: 32.0,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 10,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "search for",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )
                                ),
                                Text(
                                  "rooms & properties",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )
                                )
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 75,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://ichef.bbci.co.uk/images/ic/1200x675/p09btnp2.jpg"
                            ),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      Container(
                        height: 75,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.orange.shade900.withOpacity(0.9),
                                Colors.orangeAccent.withOpacity(0.9)
                              ]
                            )
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 10,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "search for",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400
                                  )
                                ),
                                Text(
                                  "flatmates",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )
                                )
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.5),
                        width: 1.0
                      )
                    ),
                    child: Row(
                      children: const [
                        Text(
                          "Searching in UK"
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          size: 24.0,
                        )
                      ],
                    )
                  )
                ],
              )
            )
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey.withOpacity(0.3),
              thickness: 1.0,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0, bottom: 10.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "GET STARTED",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 0.5
                    )
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Welcome to SpareRoom!",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "In just a few quick and easy steps, you'll be on your way to finding your next flatshare.",
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.3
                    )
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 250,
                    child: PageView.builder(
                      padEnds: false,
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      itemCount: _getStartedData.length,
                      itemBuilder: (ctx, index) {
                        final item = _getStartedData[index];
                        return Stack(
                          children: [
                            Card(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: ClipPath(
                                      clipper: CurveClipper(),
                                      child: Container(
                                        color: Colors.blue[400],
                                      ),
                                    )
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
                                          child: Text(
                                            "${item['title']}",
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0
                                            )
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0),
                                          child: Text(
                                            "${item['desc']}",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              height: 1.3,
                                              color: Colors.grey
                                            )
                                          ),
                                        ),
                                        const Spacer(),
                                        Divider(
                                          color: Colors.grey.withOpacity(0.3),
                                          thickness: 1.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "${item['action']}",
                                        style: const TextStyle(
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              left: 15,
                              top: 15,
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Text(
                                  "Tip ${item['id']}",
                                  style: const TextStyle(
                                    color: Colors.white
                                  )
                                ),
                              )
                            ),
                            Positioned(
                              right: 15,
                              top: 15,
                              child: Icon(
                                item["icon"] as IconData,
                                color: Colors.white,
                                size: 28.0,
                              )
                            )
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          )
        ]
      )
    );
  }
}
