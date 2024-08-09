import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});

  final List post = [
    {
      "title": 'Eikal',
      "photo": "assets/images/photo/post-1.jpg",
      "profil": "assets/images/photo/photo-1.png",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      "likes": "10000",
    },
    {
      "title": 'wagless',
      "photo": "assets/images/photo/post-1.jpg",
      "profil": "assets/images/photo/photo-2.png",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      "likes": "1000",
    },
    {
      "title": 'joy',
      "photo": "assets/images/photo/post-1.jpg",
      "profil": "assets/images/photo/photo-3.png",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      "likes": "1100",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: post.map((post) {
        return Column(
          children: [
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage(post['profil']),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        post['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Sponsored',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 390,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(post['photo']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.comment),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                  color: Colors.white,
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border),
                  color: Colors.white,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(post['profil']),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'Liked by ',
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                        children: [
                          TextSpan(
                            text: post['title'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const TextSpan(
                            text: ' and ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                          TextSpan(
                            text: post['likes'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          post['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            post['description'],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'See more',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400,
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'View all 16 comments',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundImage: AssetImage(post['profil']),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Add a comment...',
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ],
        );
      }).toList(),
    );
  }
}
