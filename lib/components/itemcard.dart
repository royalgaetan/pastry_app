import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pastry_app/pages/addtocart.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    required this.index,
    required this.type,
    required this.imgPath,
    required this.title,
    required this.price,
    required this.avgRates,
    required this.nbRates,
  });

  final int index;
  final String type;
  final String imgPath;
  final String title;
  final int price;
  final double avgRates;
  final int nbRates;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => AddtocartPage(type: type, id: index),
          ),
        );
      },
      child: Hero(
        tag: '$type-$index',
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 220,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imgPath),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.pink.shade100.withOpacity(0.2),
                    offset: Offset(0, 16),
                    blurRadius: 9.0,
                    spreadRadius: 6.0,
                    blurStyle: BlurStyle.normal),
              ],
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // TopBar Item
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.grey.withOpacity(0.6),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '$avgRates',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xFFFEC562),
                              size: 18,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '(+${nbRates.toString()})',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            IconlyBold.heart,
                            size: 20,
                            color: Color(0xFFF54749),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // BottomBar Item
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Tags
                      // Row(
                      //   children: [
                      //     Container(
                      //       padding: const EdgeInsets.symmetric(
                      //           horizontal: 8, vertical: 5),
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(6),
                      //         color: Colors.grey.withOpacity(0.7),
                      //       ),
                      //       child: Row(
                      //         children: const [
                      //           Text(
                      //             'Congolese',
                      //             style: TextStyle(
                      //                 color: Colors.white,
                      //                 fontSize: 11,
                      //                 fontFamily: 'Roboto',
                      //                 fontWeight: FontWeight.w600),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: 7,
                      //     ),
                      //     Container(
                      //       padding: const EdgeInsets.symmetric(
                      //           horizontal: 5, vertical: 5),
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(6),
                      //         color: Colors.grey.withOpacity(0.7),
                      //       ),
                      //       child: Row(
                      //         children: const [
                      //           Text(
                      //             'Malewa',
                      //             style: TextStyle(
                      //                 color: Colors.white,
                      //                 fontSize: 11,
                      //                 fontFamily: 'Roboto',
                      //                 fontWeight: FontWeight.w600),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),

                      //  Item Info
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            '\$',
                            style: TextStyle(
                                textBaseline: TextBaseline.alphabetic,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            price.toStringAsFixed(2).toString(),
                            style: TextStyle(
                              color: Color(0xFFF54749).withOpacity(0.8),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
