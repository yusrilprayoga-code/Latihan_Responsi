import 'package:flutter/material.dart';
import 'package:latihan_responsi/screens/Blogs.dart';
import 'package:latihan_responsi/screens/Reports.dart';
import 'package:lottie/lottie.dart';

import 'News.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Responsi',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildCard(
                title: 'Space Flight News',
                description:
                    'Spaceflight News is a website about the vehicles, technology, and industry behind spaceflight, exploring how and why humanity goes to space.',
                lottieUrl:
                    'https://lottie.host/220257ce-adeb-421b-bdbe-b2c5b38c5183/XviY5BW23K.json',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const NewsFlight();
                    },
                  ));
                },
              ),
              buildCard(
                title: 'Space Flight Blogs',
                description:
                    'Explore in-depth blogs covering various aspects of space exploration, from scientific discoveries to personal experiences.',
                lottieUrl:
                    'https://lottie.host/7b56fde0-a6b4-4136-8cfe-eb29f45b524e/DhvmmmzojZ.json',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const BlogsFlight();
                    },
                  ));
                },
              ),
              buildCard(
                title: 'Space Flight Reports',
                description:
                    'Access detailed flight reports providing insights into space missions, launches, and the progress of space exploration.',
                lottieUrl:
                    'https://lottie.host/55e58c6e-7ee4-4d90-94ab-8c06bd09e5c7/fWaEBPnd0f.json',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const FlightReports();
                    },
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard({
    required String title,
    required String description,
    required String lottieUrl,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.5,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 5,
        child: InkWell(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Lottie.network(
                  lottieUrl,
                  repeat: true,
                  reverse: false,
                  animate: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
