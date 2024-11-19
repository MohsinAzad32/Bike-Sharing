import 'package:bike_app/widgets/drawer.dart';
import 'package:bike_app/widgets/product.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final datetime = DateFormat.yMMMd().format(date);
    return Scaffold(
      drawer: const DrawerWidget(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 48, 242, 194),
            Color.fromARGB(133, 10, 121, 112),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.12,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/me.jpg'),
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),
                          )),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search_rounded))
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text(
                'Hello John',
                style: TextStyle(fontSize: 20, fontFamily: 'Times New Roman'),
              ),
              const Text(
                'Wanna take a ride today?',
                style: TextStyle(fontSize: 20, fontFamily: 'Times New Roman'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Card(
                    color: const Color.fromARGB(187, 250, 249, 249),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    margin: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        children: [
                          Image.asset('assets/cloudly.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                          const Column(
                            children: [
                              Text(
                                '18° Cloudy',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Times New Roman'),
                              ),
                              Text(
                                'Marbella Dr',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Times New Roman'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 8.0),
                    child: Card(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8.0, bottom: 8.0, top: 0),
                          child: Text(
                            datetime,
                            style: const TextStyle(
                                fontFamily: 'Times New Roman', fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Near You',
                        style: TextStyle(
                          fontFamily: 'Times New Roman',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      TextButton.icon(
                        label: const Text(
                          'Browse Map',
                          style: TextStyle(
                              fontFamily: 'Times New Roman',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        onPressed: () {},
                        iconAlignment: IconAlignment.end,
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.38,
                child: const ProductWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
