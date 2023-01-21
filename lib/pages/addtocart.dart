import 'package:flutter/material.dart';
import 'package:pastry_app/utils/constants.dart';

class AddtocartPage extends StatefulWidget {
  const AddtocartPage({
    Key? key,
    required this.type,
    required this.id,
  }) : super(key: key);

  final String type;
  final int id;

  @override
  State<AddtocartPage> createState() => _AddtocartPageState();
}

class _AddtocartPageState extends State<AddtocartPage> {
  late int index = 0;
  late String type = '';
  late String imgPath = '';
  late String title = '';
  late int price = 0;
  late double avgRates = 0;
  late int nbRates = 0;
  late int qte = 1;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  void decreasedOrderAmount() {
    if (qte > 1) {
      setState(() {
        qte--;
      });
    } else {
      setState(() {
        qte = 1;
      });
    }
  }

  void increasedOrderAmount() {
    setState(() {
      qte++;
    });
  }

  void fetchData() {
    if (widget.type == "hamburger") {
      index = hamburgerList[widget.id].index;
      type = hamburgerList[widget.id].type;
      imgPath = hamburgerList[widget.id].imgPath;
      title = hamburgerList[widget.id].label;
      price = hamburgerList[widget.id].price;
      avgRates = hamburgerList[widget.id].avgRates;
      nbRates = hamburgerList[widget.id].nbRates;
    }
    if (widget.type == "icecream") {
      index = iceCreamList[widget.id].index;
      type = iceCreamList[widget.id].type;
      imgPath = iceCreamList[widget.id].imgPath;
      title = iceCreamList[widget.id].label;
      price = iceCreamList[widget.id].price;
      avgRates = iceCreamList[widget.id].avgRates;
      nbRates = iceCreamList[widget.id].nbRates;
    }
    if (widget.type == "juice") {
      index = juiceList[widget.id].index;
      type = juiceList[widget.id].type;
      imgPath = juiceList[widget.id].imgPath;
      title = juiceList[widget.id].label;
      price = juiceList[widget.id].price;
      avgRates = juiceList[widget.id].avgRates;
      nbRates = juiceList[widget.id].nbRates;
    }
    if (widget.type == "cake") {
      index = cakeList[widget.id].index;
      type = cakeList[widget.id].type;
      imgPath = cakeList[widget.id].imgPath;
      title = cakeList[widget.id].label;
      price = cakeList[widget.id].price;
      avgRates = cakeList[widget.id].avgRates;
      nbRates = cakeList[widget.id].nbRates;
    }
    if (widget.type == "pizza") {
      index = pizzaList[widget.id].index;
      type = pizzaList[widget.id].type;
      imgPath = pizzaList[widget.id].imgPath;
      title = pizzaList[widget.id].label;
      price = pizzaList[widget.id].price;
      avgRates = pizzaList[widget.id].avgRates;
      nbRates = pizzaList[widget.id].nbRates;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Transform.scale(
            scale: 1.2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'),
                ),
              ),
            ),
          ),

          // White Background
          Column(
            children: [
              Container(
                color: const Color.fromRGBO(0, 0, 0, 0),
                height: 220,
              ),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
              ))
            ],
          ),

          // Page Main Content
          SafeArea(
            child: Column(
              children: [
                // Custom App Bar
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 4, 4, 4),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: const Color(0xFF232A30).withOpacity(0.8),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 4, 4, 4),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz_outlined,
                              color: const Color(0xFF232A30).withOpacity(0.8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Content
                Column(
                  children: [
                    // Food Image
                    Hero(
                      tag: '$type-$index',
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(imgPath),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Food Quantity
                    Container(
                      width: 120,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF54749),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: decreasedOrderAmount,
                            child: const Text(
                              '-',
                              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            qte.toString(),
                            style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: increasedOrderAmount,
                            child: const Text(
                              '+',
                              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Food Info
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Food Info
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                    color: Color(0xFF232A30),
                                    fontSize: 30,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10,
                              ),

                              // Tags
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            const BuildCircleAvatar(imgPath: 'assets/images/avatar 1.png'),
                                            Transform.translate(
                                              offset: const Offset(-10, 0),
                                              child: const BuildCircleAvatar(imgPath: 'assets/images/avatar 2.png'),
                                            ),
                                            Transform.translate(
                                              offset: const Offset(-20, 0),
                                              child: const BuildCircleAvatar(imgPath: 'assets/images/avatar 3.png'),
                                            ),
                                          ],
                                        ),
                                        Transform.translate(
                                          offset: const Offset(-15, 0),
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '$avgRates',
                                                style: TextStyle(
                                                    color: const Color(0xFF232A30).withOpacity(0.7),
                                                    fontSize: 14,
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
                                                style: TextStyle(
                                                    color: const Color(0xFF232A30).withOpacity(0.7),
                                                    fontSize: 14,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // Price Info
                          Row(
                            children: [
                              const Text(
                                '\$',
                                style: TextStyle(
                                    textBaseline: TextBaseline.alphabetic,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    color: Color(0xFFF54749),
                                    fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                price.toStringAsFixed(2).toString(),
                                style: const TextStyle(
                                  color: Color(0xFF232A30),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Food MetaInfo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        MetaInfo(icon: '⭐', qte: '4.4'),
                        MetaInfo(icon: '🔥', qte: '304 Kcal'),
                        MetaInfo(icon: '⏰', qte: '5-10 min'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // Food Description

                    Container(
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        'Lorem ipsum dolor sit amet  elit. Iusto molestias ratione fuga? Possimus sint rerum cumque,  vero aliquid  magni velit aut sapiente cum libero sit amet  elit. Iusto molestias ratione fuga',
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Color(0xFF232A30), fontSize: 16, fontFamily: 'Roboto', fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          // Add to cart button
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                padding: const EdgeInsets.symmetric(vertical: 18),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFF54749),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BuildCircleAvatar extends StatelessWidget {
  const BuildCircleAvatar({Key? key, required this.imgPath}) : super(key: key);

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: CircleAvatar(
        radius: 15,
        backgroundImage: AssetImage(imgPath),
      ),
    );
  }
}

class MetaInfo extends StatelessWidget {
  const MetaInfo({Key? key, required this.icon, required this.qte}) : super(key: key);

  final String icon;
  final String qte;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        children: [
          Text(
            icon,
            style: const TextStyle(
                color: Color(0xFF232A30), fontSize: 18, fontFamily: 'Roboto', fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            qte,
            style: const TextStyle(
                color: Color(0xFF232A30), fontSize: 17, fontFamily: 'Roboto', fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
