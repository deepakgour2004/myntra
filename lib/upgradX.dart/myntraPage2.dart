import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myntra/upgradX.dart/myntraPage1.dart';
import 'package:myntra/widget/common_widget1.dart';

class MyntraUi1 extends StatefulWidget {
  const MyntraUi1({super.key});

  @override
  State<MyntraUi1> createState() => _MyntraUi1State();
}

class _MyntraUi1State extends State<MyntraUi1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(105, 40, 31, 31),
        appBar: AppBar(
          leadingWidth: 45,
          titleSpacing: 5,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyntraUi()),
                  );
                },
                child: Text(
                  "Myntra",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Spacer(),
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.favorite_outline,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/myntra2.png")),
                    border: Border.all(color: Colors.black)),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Become An INSIDER!",
                    style: TextStyle(
                        color: Color.fromARGB(218, 243, 152, 8),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Join the Insider programme and earn \nSupercoins with every purchase and much \nmore. Log in now!",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "New Goal Criteria",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width * .93,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 37, 36, 36)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/images/crown.png",
                      color: Colors.grey,
                      height: 35,
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 18,
                        ),
                        Icon(
                          Icons.currency_rupee,
                          color: Colors.white,
                        ),
                        Text(
                          "You've spent",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        SizedBox(
                          height: 22,
                        ),
                        Icon(
                          Icons.currency_rupee,
                          color: Colors.white,
                          size: 17,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "7000 ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Goal",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * .93,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width * .93,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 37, 36, 36)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/images/crown.png",
                      color: Colors.grey,
                      height: 35,
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          "0/5",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Your Orders",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "5",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Goal",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    "Note: Recent purchases will only reflect in the goal once \nthe return window is over",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Benefits of Joining The Program",
                    style: TextStyle(
                        color: Color.fromARGB(218, 243, 152, 8),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/timer.png")),
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Early Access to The Sales",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * .93,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/trophy.png")),
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Insider Exclusive Rewards & Benefits",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * .93,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                "assets/images/call-icon-png-3.jpg")),
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Priority Customer Support",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "How does it work",
                    style: TextStyle(
                        color: Color.fromARGB(218, 243, 152, 8),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Earn SuperCoins with every purchase you can \nget up to 3 SuperCoins for every 100 rupee spent",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width * .93,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/supercoin.png")),
                    color: Color.fromARGB(255, 37, 36, 36)),
              ),
              Container(
                height: 46,
                width: MediaQuery.of(context).size.width * .93,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  color: Color.fromARGB(255, 63, 60, 60),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 42, 39, 39),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.arrow_upward,
                        color: Colors.yellow,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Shop on Myntra to Upgrade your tier",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Rewards",
                    style: TextStyle(
                        color: Color.fromARGB(218, 243, 152, 8),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Use your SuperCoins to get exciting rewards",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              CarouselSlider(
                items: [
                  myntraWidget1(context, 'assets/images/c3.png'),
                  myntraWidget2(context, 'assets/images/c2.png'),
                  myntraWidget3(context, 'assets/images/c4.png'),
                  myntraWidget4(context, 'assets/images/c5.png'),
                  myntraWidget5(context, 'assets/images/c1.png'),
                ],
                options: CarouselOptions(
                  reverse: false,
                  initialPage: 7,
                  height: 210.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  viewportFraction: 0.9,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.9,
                  ),
                  Image.asset(
                    "assets/images/myntra5.png",
                    height: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/images/insider.png",
                    height: 18,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Fashion Advice | VIP Access | Extra Savings",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
