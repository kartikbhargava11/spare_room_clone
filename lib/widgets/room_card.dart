import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final List<Map<String, dynamic>> rooms;
  const RoomCard({
    required this.rooms,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: rooms.map((element) {
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
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
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
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.hide_source,
                                      color: Colors.grey,
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
    );
  }
}
