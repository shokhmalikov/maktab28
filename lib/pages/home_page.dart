import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/a9v2OBcAYQk';

    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: true,
        ));
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: 'https', host: url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Can not launch url';
    }
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) {
          return Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.jpg',
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '28-IDUM',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFb68c3a),
                    ),
                  ),
                ],
              ),
            ),
            // drawer: const Drawer(),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(children: [
                  const Image(
                    image: AssetImage(
                      'assets/school.jpg',
                    ),
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Nega aynan 28-IDUM?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFb68c3a),
                      )),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFefdcbb),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 200,
                                width: 145,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Image(
                                        image: AssetImage('assets/teacher.png'),
                                      ),
                                    ),
                                    Text('Malakali ustozlar',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFb68c3a),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFefdcbb),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 200,
                                width: 145,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/modern_school.png'),
                                      ),
                                    ),
                                    Text('Maktab sharoiti',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFb68c3a),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFefdcbb),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 200,
                                width: 145,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Image(
                                        image:
                                            AssetImage('assets/security.png'),
                                        width: 170,
                                        height: 160,
                                      ),
                                    ),
                                    Text('Xavfsizlik',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFb68c3a),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFefdcbb),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 200,
                                width: 145,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Image(
                                        image:
                                            AssetImage('assets/location.png'),
                                      ),
                                    ),
                                    Text('Qulay lokatsiya',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFb68c3a),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('Yutuqlarimiz',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFb68c3a),
                      )),
                      const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFefdcbb),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/yutuqlar1.jpg',
                                  width: 160,
                                  height: 80,
                                ),
                                const Text(
                                    'Olmazor hokimi tomonidan\no\'quvchilarga sovg\'alar topshirildi.',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFb68c3a),
                                    )),
                                //Image.asset('assets/yutuqlar2.jpg',  width: 160,height: 80),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:20.0, bottom: 10),
                            child: Row(
                              children: [
                                const Text(
                                    'O\'quvchimiz chempion bo\'lganligi\nmunosabati bilan "VELOSIPED"\nsovg\'a qilindi.',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFb68c3a),
                                    )),
                                    Image.asset(
                                  'assets/yutuqlar2.jpg',
                                  width: 160,
                                  height: 80,
                                ),
                                //Image.asset('assets/yutuqlar2.jpg',  width: 160,height: 80),
                              ],
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/yutuqlar3.jpg',
                                  width: 160,
                                  height: 80,
                                ),
                                const Text(
                                    'O\'rolboyev Savron EL YURT UMIDI\njamgarmasi stipendiyasini ham\nqo\'lga kiritdi!',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFb68c3a),
                                    )),
                                //Image.asset('assets/yutuqlar2.jpg',  width: 160,height: 80),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:20.0, bottom: 10),
                            child: Row(
                              children: [
                                const Text(
                                    'Taekwondo sport turi bo\'yicha\nfaxrli o\'quvchilarimiz/',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFb68c3a),
                                    )),
                                    Image.asset(
                                  'assets/yutuqlar4.jpg',
                                  width: 160,
                                  height: 80,
                                ),
                                //Image.asset('assets/yutuqlar2.jpg',  width: 160,height: 80),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Maktabimiz omma e\'tiborida...',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFb68c3a),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: player,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Bizning ijtimoiy tarmoqlar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFb68c3a),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFefdcbb),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/telegram.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('Telegram',
                                            style: TextStyle(
                                              color: Color(0xFFb68c3a),
                                            ))
                                      ],
                                    ),
                                    onPressed: () {
                                      _launchURL(
                                          'https://t.me/maktab28qorasaroy');
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/instagram.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('Instagram',
                                            style: TextStyle(
                                              color: Color(0xFFb68c3a),
                                            ))
                                      ],
                                    ),
                                    onPressed: () {
                                      _launchURL(
                                          'https://www.instagram.com/28_maktab_olmazor/');
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/facebook.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('Facebook',
                                            style: TextStyle(
                                              color: Color(0xFFb68c3a),
                                            ))
                                      ],
                                    ),
                                    onPressed: () {
                                      _launchURL(
                                          'https://www.facebook.com/28maktab.uz');
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/email.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('Email',
                                            style: TextStyle(
                                              color: Color(0xFFb68c3a),
                                            ))
                                      ],
                                    ),
                                    onPressed: () {
                                      _launchURL('olmazormaktab28@gmail.com');
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          );
        });
  }
}
