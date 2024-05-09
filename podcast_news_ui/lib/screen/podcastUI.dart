import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:podcast_news_ui/screen/news.dart';
import 'package:podcast_news_ui/utils/AppImage.dart';
import 'package:podcast_news_ui/utils/extension.dart';

class PodCastUI extends StatefulWidget {
  const PodCastUI({Key? key}) : super(key: key);

  @override
  State<PodCastUI> createState() => _PodCastUIState();
}

class _PodCastUIState extends State<PodCastUI> {
  AudioPlayer audioPlayer = AudioPlayer();

  // Future<void> playMusic() async {
  //   audioPlayer.play('assets/sound/ronaldo.mp3' as Source);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 320,
                height: 440,
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
                      bottom: 10,
                      right: 20,
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.deepPurple,
                        ),
                        child: Center(
                          child: IconButton(
                            // onPressed: playMusic,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 40,
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
          const Text(
            'Podcast',
            style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                fontFamily: 'IOS',
                color: Color.fromARGB(255, 53, 3, 62)),
          ),
          25.height(),
          const Text(
            'LISTEN YOUR FAVOURITE PODCAST',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w100,
                fontFamily: 'IOS',
                color: Color.fromARGB(255, 53, 3, 62)),
          ),
          const Text(
            'AnyWhere , AnyTime',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w100,
                fontFamily: 'IOS',
                color: Color.fromARGB(255, 53, 3, 62)),
          ),
          8.height(),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const NewsUi()));
            },
            child: Container(
              width: 320,
              height: 80,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 147, 95, 238),
                  borderRadius: BorderRadius.circular(23)),
              child: const Center(
                child: Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          10.height(),
          const Text(
            'Sing Up',
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
