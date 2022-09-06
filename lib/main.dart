import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 180.0,
            left: 24,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (int j = 0; j <= 4; j++)
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 68.0,
                            ),
                            child: Image.asset(
                              'assets/images/img_$j.png',
                              width: 82,
                              height: 130,
                            ),
                          ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: 850,
                      child: Stack(
                        children: [
                          Transform.translate(
                            offset: const Offset(0, 6.3),

                            // child: Container(
                            //   height: 8,
                            //   width: 710,
                            //   decoration: BoxDecoration(
                            //     color: Colors.blue,
                            //     borderRadius: BorderRadius.circular(12),
                            //   ),
                            // ),
                            child: const SizedBox(
                              width: 710,
                              height: 8,
                              child: LinearProgressIndicator(
                                value: 0.3,
                                color: Colors.blue,
                                backgroundColor: Colors.grey,
                              ),
                            ),
                          ),
                          for (var i = 0; i <= 4; i++)
                            Transform.translate(
                              offset: Offset(150.0 * i + 100.0, -2),
                              child: Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 20,
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
