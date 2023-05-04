import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/coustom_butoon.dart';
import '../../widgets/intro_page.dart';
import '../auth/login_page.dart';

class onBordingScreen extends StatefulWidget {
  const onBordingScreen({super.key});
  static String id = 'onBordingScreen';
  @override
  State<onBordingScreen> createState() => _onBordingScreenState();
}

class _onBordingScreenState extends State<onBordingScreen> {
// controaller to keep trak of which page we're on
  PageController _controller = PageController();
  bool onLastpage = false;

  /* int currentIndex = 0;
  late PageController _pageController;

  @override
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('IntroPage', isViewed);
    print(prefs.getInt('IntroPage'));
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastpage = (index == 2);
              });
            },
            children: [
              IntroPage(
                image: 'assets/image/carousel1.png',
                headline: "We provide \nprofessional taxi \nservices for you",
              ),
              IntroPage(
                image: 'assets/image/carousel2.png',
                headline: "Your satisfaction \nis our number \none priority",
              ),
              IntroPage(
                image: 'assets/image/carousel3.png',
                headline: "Lets make your day \ngreat with Taxio \nright now!",
              ),
            ],
          ),
          Container(
            alignment: Alignment(0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xFFFEBB1B),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //next or done
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: onLastpage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }));
                          },
                          child: CoustomButoon(text: 'done'),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: CoustomButoon(text: 'next'),
                        ),
                ),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}