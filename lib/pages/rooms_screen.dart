import 'package:flutter/material.dart';

class RoomsScreen extends StatelessWidget {
  static const routeName = "/rooms";

  final _rooms = [
    {
      "id": 1,
      "image": "https://images.oyoroomscdn.com/uploads/hotel_image/15061/d7ddce6041bc8f83.jpg",
      "tags": [
        "Free to Contact",
        "New"
      ],
      "title": "Lovely room in a quite and clean house!",
      "desc": "Double room in Colchester (CO3)",
      "rent": "420 / month",
      "available": "Now",
      "saved": true,
      "hide": false,
    },
    {
      "id": 2,
      "image": "https://www.seleqtionshotels.com/content/dam/seleqtions/Connaugth/TCPD_PremiumBedroom4_1235.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg",
      "tags": [
        "Free to Contact",
        "New"
      ],
      "title": "Beautiful rooms in friendly house-5 mins to town!",
      "desc": "3 double room in Colchester (CO3)",
      "rent": "433 / month",
      "available": "Now",
      "saved": true,
      "hide": false,
    },
    {
      "id": 3,
      "image": "https://media-cdn.tripadvisor.com/media/photo-s/0b/ca/07/f5/ananta-spa-resorts-pushkar.jpg",
      "tags": [
        "Free to Contact",
        "New"
      ],
      "title": "Doubles with ensuites Nr hospital & train station",
      "desc": "2 Double rooms in Colchester (CO4)",
      "rent": "475 - 600 / month",
      "available": "1 August",
      "saved": false,
      "hide": false,
    },
    {
      "id": 4,
      "image": "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2019/09/25/870587-hotel-room-092519.jpg",
      "tags": [
        "Free to Contact",
        "New"
      ],
      "title": "Doubles & single room available in the same house",
      "desc": "1 single & 1 double room in Wivenhoe (CO7)",
      "rent": "400 - 550 / month",
      "available": "Now",
      "saved": false,
      "hide": false,
    },
    {
      "id": 5,
      "image": "https://htl-img-res-new.s3.ap-south-1.amazonaws.com/1203/20200716/main.jpg",
      "tags": [
        "Free to Contact",
        "New"
      ],
      "title": "5 Bedroom Houseshare in Colchester Close to Uni",
      "desc": "5 double rooms in Colchester (CO4)",
      "rent": "495 - 610 / month",
      "available": "Now",
      "saved": false,
      "hide": false,
    }
  ];

  RoomsScreen({Key? key}) : super(key: key);

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
        title: Column(
          children: const [
            Text(
              "Colchester",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              )
            ),
            Text(
              "50 Matches",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              )
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.location_on
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(12.0),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: _rooms.map((element) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12.0),
                        height: 380,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: const BorderSide(color: Colors.blue, width: 1.5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0)),
                                  child: Image(
                                    image: NetworkImage(
                                        "${element['image']}"
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${element['title']}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                          "${element['desc']}",
                                          style: const TextStyle(
                                              color: Colors.grey
                                          )
                                      ),
                                      const SizedBox(
                                        height: 15.0,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                  "Rent",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  )
                                              ),
                                              Text(
                                                  "${element['rent']}"
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                  "Available",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  )
                                              ),
                                              Text(
                                                  "${element['available']}"
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15.0,
                                      ),
                                      Divider(
                                        color: Colors.grey[300],
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: Row(
                                              children: [
                                                Icon(
                                                  element['saved'] == true ? Icons.favorite : Icons.favorite_border,
                                                  color: element['saved'] == true ? Colors.orange : Colors.grey,
                                                ),
                                                const SizedBox(
                                                  width: 5.0,
                                                ),
                                                Text(
                                                  element['saved'] == true ? "Saved" : "Save",
                                                  style: TextStyle(
                                                    color: element['saved'] == true ? Colors.orange : Colors.grey,
                                                    fontWeight: FontWeight.w600
                                                  )
                                                )
                                              ],
                                            )
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Row(
                                              children: const [
                                                Icon(
                                                  Icons.hide_source,
                                                ),
                                                SizedBox(
                                                  width: 5.0,
                                                ),
                                                Text(
                                                  "Hide"
                                                )
                                              ],
                                            )
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList()
                  )
                ),
              ),
            ],
          ),
          Positioned(
            left: 20,
            bottom: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.grey.shade300),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(-1, 1),
                    blurRadius: 4
                  )
                ]
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Filter",
                        style: TextStyle(
                          color: Colors.orange,
                        )
                      ),
                      const SizedBox(
                        width: 7.5,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const Text(
                          "2",
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  const Text(
                    "Sort",
                  ),
                  const Spacer(),
                  const Text(
                    "Save Search",
                  ),
                ],
              )
            ),
          )
        ],
      )
    );
  }
}
