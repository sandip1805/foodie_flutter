import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/components/rounded_button.dart';
import 'package:foodie_flutter_app/constants.dart';
import 'package:foodie_flutter_app/screens/sign_in/sign_in_screen.dart';
import 'package:foodie_flutter_app/screens/splash_screen/components/splash_content.dart';
import 'package:foodie_flutter_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Foodie, Let’s cook!",
      "image": "assets/images/Splash_1.png"
    },
    {
      "text": "We help people connect with recipe \naround World",
      "image": "assets/images/Splash_2.png"
    },
    {
      "text": "We show the easy way to cook. \nJust stay at home with us",
      "image": "assets/images/Splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Expanded(
            flex: 4,
            child: PageView.builder(
              onPageChanged: (value) => {
                setState(
                  () {
                    currentPage = value;
                  },
                )
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                text: splashData[index]['text'],
                image: splashData[index]['image'],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(25),
                ),
                RoundedButton(
                  width: size.width * 0.8,
                  height: size.height * 0.08,
                  onPressed: () => {
                    Navigator.pushNamed(context, SignInScreen.ID),
                  },
                  label: 'Get Started',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: const EdgeInsets.only(left: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Colors.black45,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
