import 'package:flutter/material.dart';

class DropdownLogo extends StatefulWidget {
  const DropdownLogo({super.key});

  @override
  _DropdownLogoState createState() => _DropdownLogoState();
}

class _DropdownLogoState extends State<DropdownLogo> {
  bool _isDropdownOpen = false;

  void _toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            _isDropdownOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            color: Colors.white,
          ),
          onPressed: _toggleDropdown,
        ),
        // Dropdown menu
        Positioned(
          top: 40, // Adjust the position of dropdown
          right: 0,
          child: Visibility(
            visible: _isDropdownOpen,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              color: Colors.grey[900],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: const Text(
                      'Following',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Handle 'Following' tap
                      _toggleDropdown();
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Favorites',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Handle 'Favorites' tap
                      _toggleDropdown();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
