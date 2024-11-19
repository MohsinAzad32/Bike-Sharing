import 'package:flutter/material.dart';

class TopUpScreen extends StatefulWidget {
  const TopUpScreen({super.key});

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
  Color first = Colors.white;

  bool isfive = false;
  bool isten = false;
  bool isfifteen = false;
  bool istwenty = false;

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
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                const Text(
                  'Top Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      40,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildtopup(
                              dollars: 5,
                              color: first,
                              ontap: () {
                                setState(() {
                                  isfive = !isfive;
                                  isfifteen = false;
                                  isten = false;
                                  istwenty = false;
                                  isfive ? first = Colors.greenAccent : first;
                                });
                              },
                            ),
                            // SizedBox(
                            //   width: MediaQuery.of(context).size.width * 0.2,
                            // ),
                            buildtopup(
                                dollars: 10,
                                color: first,
                                ontap: () {
                                  setState(() {
                                    isten = !isten;
                                    isfive = false;
                                    isfifteen = false;
                                    istwenty = false;
                                    isten ? first = Colors.greenAccent : first;
                                  });
                                })
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildtopup(
                              dollars: 15,
                              color: first,
                              ontap: () {
                                setState(() {
                                  isfifteen = !isfifteen;
                                  isfive = false;
                                  isten = false;
                                  istwenty = false;
                                  isfifteen
                                      ? first = Colors.greenAccent
                                      : first;
                                });
                              },
                            ),
                            // SizedBox(
                            //   width: MediaQuery.of(context).size.width * 0.2,
                            // ),
                            buildtopup(
                              dollars: 20,
                              color: first,
                              ontap: () {
                                setState(() {
                                  istwenty = !istwenty;
                                  isfive = false;
                                  isten = false;
                                  isfifteen = false;
                                  istwenty ? first = Colors.greenAccent : first;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text('Mastercard'),
                            const Spacer(),
                            Image.asset(
                              'assets/mastercard.png',
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.4,
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 48, 242, 194),
                                  Color.fromARGB(133, 10, 121, 112),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: const TopUpScreen(),
                                    );
                                  },
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  reverseTransitionDuration:
                                      const Duration(seconds: 1),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                                ));
                              },
                              child: const Text(
                                'Purchase',
                                style: TextStyle(
                                  fontFamily: 'Times New Roman',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
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

  Widget buildtopup(
      {required int dollars,
      required Color color,
      required void Function() ontap}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
          border: Border.all(color: color, width: 3),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(
                  255,
                  61,
                  60,
                  60,
                ),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3)),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            '\$ $dollars',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
