import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({super.key});

  final List items = [
    {
      "title": 'Your Story',
      "images": "assets/images/photo/photo-1.png",
    },
    {
      "title": 'paws',
      "images": "assets/images/photo/photo-2.png",
    },
    {
      "title": 'wagless',
      "images": "assets/images/photo/photo-3.png",
    },
    {
      "title": 'joy',
      "images": "assets/images/photo/photo-4.png",
    },
    {
      "title": 'joseph',
      "images": "assets/images/photo/photo-5.png",
    },
    {
      "title": 'sterling',
      "images": "assets/images/photo/photo-1.png",
    },
    {
      "title": 'musiala',
      "images": "assets/images/photo/photo-2.png",
    },
    {
      "title": 'ederson',
      "images": "assets/images/photo/photo-3.png",
    },
    {
      "title": 'kane',
      "images": "assets/images/photo/photo-4.png",
    },
    {
      "title": 'mbappe',
      "images": "assets/images/photo/photo-5.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: items.map((story) {
          if (story['title'] == 'Your Story') {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(story['images']),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.add,
                              size: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      story['title'],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(201, 19, 185, 1),
                              Color.fromRGBO(249, 55, 63, 1),
                              Color.fromRGBO(254, 205, 0, 1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                      Container(
                        width: 73,
                        height: 73,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(story['images']),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      story['title'],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        }).toList(),
      ),
    );
  }
}
