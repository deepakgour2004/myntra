import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myntra/upgradX.dart/myntraPage2.dart';
import 'package:myntra/upgradX.dart/myntra_page.dart';
import 'package:myntra/widget/common_widget1.dart';
import 'package:myntra/widget/common_widget2.dart';
import '../widget/common_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';

class MyntraUi extends StatefulWidget {
  const MyntraUi({super.key});

  @override
  State<MyntraUi> createState() => _MyntraUiState();
}

var loading = true;

class _MyntraUiState extends State<MyntraUi> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    readjsonmyntra().whenComplete(() {
      setState(() {
        loading = false;
      });
    });
  }

  var myntrajson;
  Future readjsonmyntra() async {
    var response1 = await rootBundle.loadString("assets/json/categorie.json");
    var data1 = json.decode(response1);
    setState(() {
      myntrajson = data1;
    });
    print(myntrajson);
  }

  int currentIndex = 0;
  int _currentstate = 0;

  final List<Map<String, dynamic>> items = [
    {"price": "Under \$1099", "images": "assets/images/tshirt.jpg"},
    {"price": "Under \$999", "images": "assets/images/boy1.webp"},
    {"price": "Under \$899", "images": "assets/images/boy2.jpg"},
    {"price": "Under \$799", "images": "assets/images/girl.jpg"},
    {"price": "Under \$699", "images": "assets/images/girls1.jpg"},
    {"price": "Under \$599", "images": "assets/images/jeans.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyntraUi1()),
                  );
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/myntra.webp"))),
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
                color: Colors.black.withOpacity(0.6),
              ),
            ],
          ),
        ),
        body: loading
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.125,
                        child: ListView.builder(
                            itemCount: myntrajson["count"],
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Myntra_Page(
                                    myntrajson["post"][index]["photo"],
                                    myntrajson["post"][index]["name"],
                                  ),
                                  SizedBox(
                                    width: 8,
                                  )
                                ],
                              );
                            }),
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/flat off.png")),
                            border: Border.all(color: Colors.black)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width * .93,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign Up For Exciting Deals!",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CarouselSlider(
                        items: [
                          carouselWidget1(context, 'assets/images/c1.png'),
                          carouselWidget2(context, 'assets/images/c2.png'),
                          carouselWidget3(context, 'assets/images/c3.jpg'),
                          carouselWidget4(context, 'assets/images/c3.png'),
                          carouselWidget5(context, 'assets/images/c4.png'),
                          carouselWidget6(context, 'assets/images/c5.png'),
                          carouselWidget7(context, 'assets/images/c6.png'),
                        ],
                        options: CarouselOptions(
                          padEnds: true,
                          animateToClosest: true,
                          reverse: false,
                          initialPage: 7,
                          height: 230.0,
                          enlargeCenterPage: false,
                          autoPlay: false,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          viewportFraction: 0.9,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                      Container(
                        height: 19,
                        child: DotsIndicator(
                          dotsCount: 7,
                          position: currentIndex.toInt(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color.fromARGB(255, 4, 180, 156)),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/certification-badge.png",
                                  color: Colors.white,
                                ),
                                Text(
                                  "100% Original \nProducts",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color.fromARGB(255, 4, 180, 156)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.currency_rupee_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Free Shipping \nOn 1st Order",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color.fromARGB(255, 4, 180, 156)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.local_shipping,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Easy Returns \n& Refunds",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CarouselSlider(
                        items: [
                          axisWidget(context,
                              'assets/images/Myntra-Cashback-Offers.png'),
                          axisWidget1(context,
                              'assets/images/myntracredit-cardoffer.png')
                        ],
                        options: CarouselOptions(
                          reverse: false,
                          initialPage: 2,
                          height: 40.0,
                          enlargeCenterPage: false,
                          autoPlay: false,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          viewportFraction: 0.9,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentstate = index;
                            });
                          },
                        ),
                      ),
                      Container(
                        height: 17,
                        child: DotsIndicator(
                          dotsCount: 2,
                          position: _currentstate.toInt(),
                        ),
                      ),
                      Text(
                        "ALL-TIME FAVOURITES",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Expanded(
                        child: GridView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.all(15),
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 20,
                                    crossAxisSpacing: 20,
                                    crossAxisCount: 2),
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      "${items.elementAt(index)['images']}",
                                      fit: BoxFit.fill,
                                      height: 120,
                                      width: 175,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        Text(
                                            "${items.elementAt(index)['price']}")
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                      // Container(
                      //   height: 30,
                      //   width: MediaQuery.of(context).size.width * .93,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(8),
                      //       color: Colors.black),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         "View All",
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       SizedBox(
                      //         width: 10,
                      //       ),
                      //       Container(
                      //         height: 30,
                      //         width: 20,
                      //         decoration: BoxDecoration(
                      //             color: Colors.grey, shape: BoxShape.circle),
                      //         child: Icon(
                      //           Icons.keyboard_arrow_right,
                      //           color: Colors.black,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // Row(
                      //   children: [
                      //     SizedBox(width: 16),
                      //     Text(
                      //       "HIGHLIGHTS OF THE DAY",
                      //       style: TextStyle(
                      //           color: Colors.black,
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.bold),
                      //     ),
                      //   ],
                      // ),
                      // Container(
                      //   height: 40,
                      //   child: Column(
                      //     children: [
                      //       Expanded(
                      //         child: ListView.builder(
                      //             shrinkWrap: true,
                      //             itemCount: 3,
                      //             scrollDirection: Axis.horizontal,
                      //             itemBuilder: ((context, index) {
                      //               return myntraWidget6(
                      //                   context, "assets/images/boy.jpg");
                      //             })),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
