import 'package:flutter/material.dart';

class StatScreen extends StatefulWidget {
  const StatScreen({super.key});

  @override
  State<StatScreen> createState() => _StatScreenState();
}

class _StatScreenState extends State<StatScreen> {
  bool ismaster = false;
  bool isapple = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 48, 242, 194),
            Color.fromARGB(133, 10, 121, 112),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                size: 40,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'My Statistics',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      // Added for a better look
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -80,
                        child: buildcard(
                          iconcolor: const Color.fromARGB(179, 8, 97, 230),
                          icon: Icons.timer,
                          title: 'Duration',
                          subtitle: '28 mins',
                        ),
                      ),
                      Positioned(
                        top: 65,
                        child: buildcard(
                          iconcolor: const Color.fromARGB(179, 8, 97, 230),
                          icon: Icons.fireplace_rounded,
                          title: 'Calories',
                          subtitle: '34 cal',
                        ),
                      ),
                      Positioned(
                        top: 230,
                        child: buildcard(
                          iconcolor: const Color.fromARGB(179, 8, 97, 230),
                          icon: Icons.map,
                          title: 'Distance',
                          subtitle: '3752 m',
                        ),
                      ),
                      Positioned(
                        top: 380,
                        child: buildcard(
                          iconcolor: const Color.fromARGB(179, 8, 97, 230),
                          icon: Icons.energy_savings_leaf,
                          title: 'Carbon',
                          subtitle: '6 oz',
                        ),
                      ),
                      Positioned(
                        top: 500,
                        child: buildbutton(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildbutton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 48, 242, 194),
            Color.fromARGB(133, 10, 121, 112),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Center(
          child: TextButton(
            onPressed: () async {},
            child: const Text(
              'Share',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildcard(
      {required IconData icon,
      required String title,
      required Color iconcolor,
      required String subtitle}) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            spreadRadius: 1,
          )
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: ListTile(
            leading: Icon(
              icon,
              color: iconcolor,
              size: 40,
            ),
            title: Text(
              title,
              style: const TextStyle(color: Colors.grey, fontSize: 25),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                subtitle,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
