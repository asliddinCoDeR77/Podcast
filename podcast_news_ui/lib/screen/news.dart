import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:podcast_news_ui/screen/podcastUI.dart';
import 'package:podcast_news_ui/utils/AppImage.dart';
import 'package:podcast_news_ui/utils/extension.dart';

class NewsUi extends StatefulWidget {
  const NewsUi({super.key});

  @override
  State<NewsUi> createState() => _NewsUiState();
}

class _NewsUiState extends State<NewsUi> {
  static const List<String> menuItems = ['Subscribe'];

  List<PopupMenuEntry<String>> itemBuilder(BuildContext context) {
    return menuItems.map((String item) {
      return PopupMenuItem<String>(
        value: item,
        child: Text(item),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const PodCastUI()));
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Text(
          'Popular Show',
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'IOS',
              color: Color.fromARGB(255, 53, 3, 62)),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            itemBuilder: itemBuilder,
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 320,
                height: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  image: const DecorationImage(
                    image: AssetImage(AppImage.suuui),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 130,
                      right: 130,
                      left: 130,
                      top: 130,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 102, 102, 102),
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          25.height(),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(12)),
              Container(
                width: 170,
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 147, 95, 238),
                    borderRadius: BorderRadius.circular(23)),
                child: const Center(
                  child: Text(
                    'Play All Shows',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              10.width(),
              Container(
                width: 170,
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 254, 254),
                    borderRadius: BorderRadius.circular(23)),
                child: const Center(
                  child: Text(
                    'Subscribe',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          15.height(),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(12)),
              const Text(
                '12 Popular Show',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IOS',
                    color: Color.fromARGB(255, 53, 3, 62)),
              ),
              60.width(),
              const Text(
                'See all',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'IOS',
                    color: Color.fromARGB(255, 78, 78, 78)),
              ),
            ],
          ),
          15.height(),
          Container(
            height: 80,
            width: 370,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(23),
            ),
            child: Row(
              children: [
                Container(
                  width: 110,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    image: const DecorationImage(
                      image: AssetImage(AppImage.suuui),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                23.width(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    12.height(),
                    const Text(
                      'Enjoy',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IOS',
                          color: Color.fromARGB(255, 53, 3, 62)),
                    ),
                    const Text(
                      'Socially Buzzed',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'IOS',
                          color: Color.fromARGB(255, 78, 78, 78)),
                    ),
                  ],
                ),
                45.width(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 207, 207, 207),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.play_fill,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const GNav(tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
          iconColor: Colors.deepPurpleAccent,
          iconActiveColor: Colors.deepPurpleAccent,
          textColor: Colors.deepPurpleAccent,
        ),
        GButton(
          icon: Icons.category_outlined,
          text: 'Category',
          iconColor: Colors.deepPurpleAccent,
          iconActiveColor: Colors.deepPurpleAccent,
          textColor: Colors.deepPurpleAccent,
        ),
        GButton(
          icon: Icons.playlist_add_check,
          text: 'Playlist',
          iconColor: Colors.deepPurpleAccent,
          iconActiveColor: Colors.deepPurpleAccent,
          textColor: Colors.deepPurpleAccent,
        ),
        GButton(
          icon: CupertinoIcons.person_fill,
          text: 'Profile',
          active: true,
          iconColor: Colors.deepPurpleAccent,
          iconActiveColor: Colors.deepPurpleAccent,
          textColor: Colors.deepPurpleAccent,
        ),
      ]),
    );
  }
}
