import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Row(
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
      ),
      drawer: const Drawer(),
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
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Image(
                                  image: AssetImage('assets/teacher.png'),
                                ),
                              ),
                              Text('Bizning ustozlar',
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
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Image(
                                  image: AssetImage('assets/modern_school.png'),
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
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Image(
                                  image: AssetImage('assets/security.png'),
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
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Image(
                                  image: AssetImage('assets/location.png'),
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
          ]),
        ),
      ),
    );
  }
}
