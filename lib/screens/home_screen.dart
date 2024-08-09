import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/post_widget.dart';
import 'package:instagram_clone/widgets/story_widget.dart';
import 'package:instagram_clone/models/bottom_bar.dart'; // Import CustomBottomNavBar

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const id = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDropdownOpen = false;

  void _toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            const SizedBox(width: 10),
            Image.asset(
              'assets/images/instagram-logo.png',
              height: 30,
            ),
            IconButton(
              icon: Icon(
                _isDropdownOpen
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
              onPressed: _toggleDropdown,
            ),
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                StoryWidget(),
                PostWidget(),
              ],
            ),
          ),
          if (_isDropdownOpen)
            Positioned(
              top: -20,
              left: 10,
              child: _buildDropdownMenu(),
            ),
        ],
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(),
    );
  }

  Widget _buildDropdownMenu() {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[900],
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: Column(
        children: [
          ListTile(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Following',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.people,
                  color: Colors.white,
                ),
              ],
            ),
            onTap: () {
              // Handle 'Following' tap
              _toggleDropdown();
            },
          ),
          ListTile(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favorites',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.white,
                ),
              ],
            ),
            onTap: () {
              // Handle 'Favorites' tap
              _toggleDropdown();
            },
          ),
        ],
      ),
    );
  }
}
