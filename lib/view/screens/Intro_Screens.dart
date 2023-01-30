import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  CarouselController carouselController = CarouselController();
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        carouselController: carouselController,
        options: CarouselOptions(
          enableInfiniteScroll: false,
          initialPage: current,
          onPageChanged: (val,_) {
            setState(() {
              current = val;
              print(current);
            });
          },
          viewportFraction: 1,
          height: MediaQuery.of(context).size.height * 1,
        ),
        items: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/images/cuate.png"),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Boost Productivity",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Foc.io helps you boost your productivity\n"
                  "                   on a differnet level",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();

                      prefs.setBool('isStart', true);

                      await Navigator.pushReplacementNamed(context, '/');
                    },
                    child: const Text("Skip",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await carouselController.nextPage(
                          duration: Duration(milliseconds: 100),
                          curve: Curves.easeInOut);
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/images/rafiki.png"),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Work Seamlessly",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Get your work done seamlessly\n"
                  "          without interruption",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text("Skip",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await carouselController.nextPage(
                          duration: Duration(milliseconds: 100),
                          curve: Curves.easeInOut);
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/images/bro.png"),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Achieve Higher Goals",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "By boosing your producivity we help\n"
                  "           you achive higher goals",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                      await SharedPreferences.getInstance();

                      prefs.setBool('isStart', true);

                      await Navigator.pushReplacementNamed(context, '/');
                    },
                    child: const Text("Skip",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                      await SharedPreferences.getInstance();

                      prefs.setBool('isStart', true);

                      await Navigator.pushReplacementNamed(context, '/');
                    },
                    child: const Text(
                      "Start",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}
