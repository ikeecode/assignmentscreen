import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/about.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.black12, Colors.black]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Oralex',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "All-In-One\nReal Estate\nPlatform",
                        style: TextStyle(
                          fontSize: 46,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Discover Our Exceptional Properties, Crafted as\nMasterpieces with Lasting Value for Client",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.horizontal_rule,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.horizontal_rule,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.horizontal_rule,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          FloatingActionButton(
                            shape: const CircleBorder(side: BorderSide()),
                            onPressed: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius:
                                      BorderRadiusDirectional.circular(100.0)),
                              child: const Text(
                                "Go",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
