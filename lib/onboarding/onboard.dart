// import 'package:bike_app/auth/signup.dart';
import 'package:bike_app/model/board.dart';
import 'package:bike_app/screens/verification.dart';
// import 'package:bike_sharing/onboarding/homescreen.dart';
import 'package:flutter/material.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final items = BoardModel.bikes;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Image.asset(
              items[index].image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            items[index].title,
            style: const TextStyle(
              fontSize: 25,
              fontFamily: 'Times New Roman',
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            items[index].subtitle,
            maxLines: 3,
            style: const TextStyle(
                fontSize: 15,
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold),
          ),
          buildrow(),
        ],
      ),
    );
  }

  Widget buildrow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return FadeTransition(
                      opacity: animation,
                      child: const VerificationScreen(),
                    );
                  },
                  transitionDuration: const Duration(seconds: 1),
                  reverseTransitionDuration: const Duration(seconds: 1),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ));
              },
              child: const Text('Skip')),
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.23,
              left: MediaQuery.of(context).size.width * 0.23,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    backgroundColor: index == 0 ? Colors.black : Colors.grey,
                    radius: 5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    backgroundColor: index == 1 ? Colors.black : Colors.grey,
                    radius: 5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: index == 2 ? Colors.black : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                if (index == items.length - 1) {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return FadeTransition(
                        opacity: animation,
                        child: const VerificationScreen(),
                      );
                    },
                    transitionDuration: const Duration(seconds: 1),
                    reverseTransitionDuration: const Duration(seconds: 1),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ));
                } else {
                  index++;
                }
              });
            },
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
