import 'package:flutter/material.dart';
import 'package:searching_app/screens/image_search_screen.dart';
import 'package:searching_app/screens/video_search_screen.dart';

class SearchingApp extends StatefulWidget {
  const SearchingApp({Key? key}) : super(key: key);

  @override
  State<SearchingApp> createState() => _SearchingAppState();
}

class _SearchingAppState extends State<SearchingApp> {
  int _selectedIndex = 0;

  final screens = const [
    ImageSearchScreen(),
    VideoSearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'images',
            icon: Icon(
              Icons.image_search_outlined,
              // color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            label: 'videos',
            icon: Icon(
              Icons.video_collection,
              // color: Colors.blue,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
