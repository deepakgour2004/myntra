import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myntra/upgradX.dart/myntra_page.dart';

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
    // setState(() {
    //   loading = true;
    // });

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
              Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/myntra.webp"))),
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
                      // Expanded(
                      //   child: ListView(
                      //     shrinkWrap: true,
                      //     padding: EdgeInsets.all(15),
                      //     scrollDirection: Axis.horizontal,
                      //     children: [
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 image: DecorationImage(
                      //                     image: AssetImage(
                      //                         "assets/images/categories.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("Categories"),
                      //         ],
                      //       ),
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 image: DecorationImage(
                      //                     fit: BoxFit.fill,
                      //                     image: AssetImage("assets/images/men.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("MEN"),
                      //         ],
                      //       ),
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 color: Color.fromARGB(255, 228, 214, 214),
                      //                 image: DecorationImage(
                      //                     image:
                      //                         AssetImage("assets/images/women.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("WOMEN")
                      //         ],
                      //       ),
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 color: Color.fromARGB(255, 228, 214, 214),
                      //                 image: DecorationImage(
                      //                     image:
                      //                         AssetImage("assets/images/kids.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("KIDS")
                      //         ],
                      //       ),
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 color: Color.fromARGB(255, 228, 214, 214),
                      //                 image: DecorationImage(
                      //                     image: AssetImage(
                      //                         "assets/images/footwear.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("FOOTWEAR")
                      //         ],
                      //       ),
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 color: Color.fromARGB(255, 228, 214, 214),
                      //                 image: DecorationImage(
                      //                     image:
                      //                         AssetImage("assets/images/beauty.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("BEAUTY")
                      //         ],
                      //       ),
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 color: Color.fromARGB(255, 228, 214, 214),
                      //                 image: DecorationImage(
                      //                     image: AssetImage(
                      //                         "assets/images/accessories.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("ACCESSORIES")
                      //         ],
                      //       ),
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 color: Color.fromARGB(255, 228, 214, 214),
                      //                 image: DecorationImage(
                      //                     image:
                      //                         AssetImage("assets/images/home.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("HOME")
                      //         ],
                      //       ),
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 color: Color.fromARGB(255, 228, 214, 214),
                      //                 image: DecorationImage(
                      //                     image: AssetImage(
                      //                         "assets/images/jwellery.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("JWELLERY")
                      //         ],
                      //       ),
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 color: Color.fromARGB(255, 228, 214, 214),
                      //                 image: DecorationImage(
                      //                     image: AssetImage(
                      //                         "assets/images/hot trends.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("HOT TRENDS")
                      //         ],
                      //       ),
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 color: Color.fromARGB(255, 228, 214, 214),
                      //                 image: DecorationImage(
                      //                     image:
                      //                         AssetImage("assets/images/studio.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("STUDIO")
                      //         ],
                      //       ),
                      //       Column(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 70,
                      //             decoration: BoxDecoration(
                      //                 color: Color.fromARGB(255, 228, 214, 214),
                      //                 image: DecorationImage(
                      //                     image: AssetImage(
                      //                         "assets/images/gift card.png")),
                      //                 border: Border.all(color: Colors.black),
                      //                 shape: BoxShape.circle),
                      //           ),
                      //           Text("GIFT CARD")
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),

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
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CarouselSlider(
                        items: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: Border.all(color: Colors.black),
                            ),
                            child: Image.asset(
                              'assets/images/c1.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: Border.all(color: Colors.black),
                            ),
                            child: Image.asset(
                              'assets/images/c2.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: Border.all(color: Colors.black),
                            ),
                            child: Image.asset(
                              'assets/images/c3.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: Border.all(color: Colors.black),
                            ),
                            child: Image.asset(
                              'assets/images/c3.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: Border.all(color: Colors.black),
                            ),
                            child: Image.asset(
                              'assets/images/c4.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: Border.all(color: Colors.black),
                            ),
                            child: Image.asset(
                              'assets/images/c5.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: Border.all(color: Colors.black),
                            ),
                            child: Image.asset(
                              'assets/images/c6.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          reverse: true,
                          initialPage: 7,
                          height: 230.0,
                          enlargeCenterPage: false,
                          autoPlay: false,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          viewportFraction: 0.9,
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
                      Text(
                        "ALL-TIME FAVOURITES",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 85,
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
