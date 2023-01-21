import 'package:flutter/material.dart';
import 'package:pastry_app/components/categorieitem.dart';
import 'package:pastry_app/components/itemcard.dart';
import 'package:pastry_app/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Widget> items = [];

  int categorieActiveIndex = 0;

  List<Widget> getCategories() {
    List<Widget> categories = [];

    for (int i = 0; i < categorieItemList.length; i++) {
      Widget widget = CategorieItemContainer(
        index: categorieItemList[i].index,
        imgPath: categorieItemList[i].imgPath,
        label: categorieItemList[i].label,
        isActive: categorieItemList[i].index == categorieActiveIndex ? true : false,
        onTap: () {
          switchCategorieSelected(categorieItemList[i].index);
        },
      );

      categories.add(widget);
    }

    return categories;
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      categorieActiveIndex = 1;
      getIcecreamItem();
    });
  }

  void switchCategorieSelected(index) {
    categorieActiveIndex = index;

    setState(() {
      switch (categorieActiveIndex) {
        case 0:
          getHamburgerItem();
          break;
        case 1:
          getIcecreamItem();
          break;
        case 2:
          getJuiceItem();
          break;
        case 3:
          getCakeItem();
          break;
        case 4:
          getpizzaItem();
          break;
        default:
          getHamburgerItem();
      }
    });
  }

  List getHamburgerItem() {
    List<Widget> hamburgers = [];

    for (int i = 0; i < hamburgerList.length; i++) {
      var widget = ItemCard(
        index: hamburgerList[i].index,
        type: hamburgerList[i].type,
        imgPath: hamburgerList[i].imgPath,
        title: hamburgerList[i].label,
        price: hamburgerList[i].price,
        avgRates: hamburgerList[i].avgRates,
        nbRates: hamburgerList[i].nbRates,
      );

      hamburgers.add(widget);
      items = hamburgers;
    }

    return items;
  }

  List getIcecreamItem() {
    List<Widget> iceCream = [];

    for (int i = 0; i < iceCreamList.length; i++) {
      var widget = ItemCard(
        index: iceCreamList[i].index,
        type: iceCreamList[i].type,
        imgPath: iceCreamList[i].imgPath,
        title: iceCreamList[i].label,
        price: iceCreamList[i].price,
        avgRates: iceCreamList[i].avgRates,
        nbRates: iceCreamList[i].nbRates,
      );

      iceCream.add(widget);
      items = iceCream;
    }

    return items;
  }

  List getJuiceItem() {
    List<Widget> juices = [];

    for (int i = 0; i < juiceList.length; i++) {
      var widget = ItemCard(
        index: juiceList[i].index,
        type: juiceList[i].type,
        imgPath: juiceList[i].imgPath,
        title: juiceList[i].label,
        price: juiceList[i].price,
        avgRates: juiceList[i].avgRates,
        nbRates: juiceList[i].nbRates,
      );

      juices.add(widget);
      items = juices;
    }

    return items;
  }

  List getCakeItem() {
    List<Widget> cakes = [];

    for (int i = 0; i < cakeList.length; i++) {
      var widget = ItemCard(
        index: cakeList[i].index,
        type: cakeList[i].type,
        imgPath: cakeList[i].imgPath,
        title: cakeList[i].label,
        price: cakeList[i].price,
        avgRates: cakeList[i].avgRates,
        nbRates: cakeList[i].nbRates,
      );

      cakes.add(widget);
      items = cakes;
    }

    return items;
  }

  List getpizzaItem() {
    List<Widget> pizza = [];

    for (int i = 0; i < pizzaList.length; i++) {
      var widget = ItemCard(
        index: pizzaList[i].index,
        type: pizzaList[i].type,
        imgPath: pizzaList[i].imgPath,
        title: pizzaList[i].label,
        price: pizzaList[i].price,
        avgRates: pizzaList[i].avgRates,
        nbRates: pizzaList[i].nbRates,
      );

      pizza.add(widget);
      items = pizza;
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          // Promotion Card Section
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFFFEECE),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Promotion Text + Button
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                              text: 'The Fastest In Delivery ',
                              style: TextStyle(color: Color(0xFF232A30), fontWeight: FontWeight.w700, fontSize: 15),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Food',
                                  style: TextStyle(
                                    color: Color(0xFFF54749),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFFF54749),
                            ),
                            child: const Center(
                              child: Text(
                                'Order Now',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto',
                                    fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Promotion Image
                  Expanded(
                    child: Transform.scale(
                      scale: 0.88,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/gift_icon.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // categories Label Row
          const HeaderLabel(label: 'categories'),

          // categories Items Row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: getCategories(),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          // Popular Now Label Row
          const HeaderLabel(label: 'Popular Now'),

          // Popular Now Items Row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: items,
            ),
          ),
        ],
      ),
    );
  }
}

// categories Label Row

class HeaderLabel extends StatelessWidget {
  const HeaderLabel({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
                color: Color(0xFF232A30), fontSize: 18, fontFamily: 'Roboto', fontWeight: FontWeight.w600),
          ),
          Row(
            children: const [
              Text(
                'View all',
                style: TextStyle(
                    color: Color(0xFFFEC562), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Color(0xFFFEC562),
              )
            ],
          )
        ],
      ),
    );
  }
}
