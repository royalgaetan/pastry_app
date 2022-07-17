import 'package:flutter/material.dart';
import 'package:pastry_app/components/categorieitem.dart';
import 'package:pastry_app/components/itemcard.dart';
import 'package:pastry_app/utils/constants.dart';
import 'package:pastry_app/utils/item_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Widget> items = [];

  int _CategorieActive_index = 0;

  List<Widget> getCategories() {
    List<Widget> Categories = [];

    for (int i = 0; i < CategorieItemList.length; i++) {
      Widget widget = categorieItemContainer(
        index: CategorieItemList[i].index,
        imgPath: CategorieItemList[i].imgPath,
        label: CategorieItemList[i].label,
        isActive:
            CategorieItemList[i].index == _CategorieActive_index ? true : false,
        onTap: () {
          switchCategorieSelected(CategorieItemList[i].index);
        },
      );

      Categories.add(widget);
    }

    return Categories;
  }

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _CategorieActive_index = 1;
      getIcecreamItem();
    });
  }

  void switchCategorieSelected(index) {
    _CategorieActive_index = index;

    setState(() {
      switch (_CategorieActive_index) {
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
          getPizzaItem();
          break;
        default:
          getHamburgerItem();
      }
    });

    return index;
  }

  List getHamburgerItem() {
    List<Widget> Hamburgers = [];

    for (int i = 0; i < HamburgerList.length; i++) {
      var Widget = ItemCard(
        index: HamburgerList[i].index,
        type: HamburgerList[i].type,
        imgPath: HamburgerList[i].imgPath,
        title: HamburgerList[i].label,
        price: HamburgerList[i].price,
        avgRates: HamburgerList[i].avgRates,
        nbRates: HamburgerList[i].nbRates,
      );

      Hamburgers.add(Widget);
      items = Hamburgers;
    }

    return items;
  }

  List getIcecreamItem() {
    List<Widget> iceCream = [];

    for (int i = 0; i < IceCreamList.length; i++) {
      var Widget = ItemCard(
        index: IceCreamList[i].index,
        type: IceCreamList[i].type,
        imgPath: IceCreamList[i].imgPath,
        title: IceCreamList[i].label,
        price: IceCreamList[i].price,
        avgRates: IceCreamList[i].avgRates,
        nbRates: IceCreamList[i].nbRates,
      );

      iceCream.add(Widget);
      items = iceCream;
    }

    return items;
  }

  List getJuiceItem() {
    List<Widget> Juices = [];

    for (int i = 0; i < JuiceList.length; i++) {
      var Widget = ItemCard(
        index: JuiceList[i].index,
        type: JuiceList[i].type,
        imgPath: JuiceList[i].imgPath,
        title: JuiceList[i].label,
        price: JuiceList[i].price,
        avgRates: JuiceList[i].avgRates,
        nbRates: JuiceList[i].nbRates,
      );

      Juices.add(Widget);
      items = Juices;
    }

    return items;
  }

  List getCakeItem() {
    List<Widget> Cakes = [];

    for (int i = 0; i < CakeList.length; i++) {
      var Widget = ItemCard(
        index: CakeList[i].index,
        type: CakeList[i].type,
        imgPath: CakeList[i].imgPath,
        title: CakeList[i].label,
        price: CakeList[i].price,
        avgRates: CakeList[i].avgRates,
        nbRates: CakeList[i].nbRates,
      );

      Cakes.add(Widget);
      items = Cakes;
    }

    return items;
  }

  List getPizzaItem() {
    List<Widget> Pizza = [];

    for (int i = 0; i < PizzaList.length; i++) {
      var Widget = ItemCard(
        index: PizzaList[i].index,
        type: PizzaList[i].type,
        imgPath: PizzaList[i].imgPath,
        title: PizzaList[i].label,
        price: PizzaList[i].price,
        avgRates: PizzaList[i].avgRates,
        nbRates: PizzaList[i].nbRates,
      );

      Pizza.add(Widget);
      items = Pizza;
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
            padding: EdgeInsets.all(20),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFFEECE),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Promotion Text + Button
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                              text: 'The Fastest In Delivery ',
                              style: TextStyle(
                                  color: Color(0xFF232A30),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
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
                          SizedBox(
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
                        decoration: BoxDecoration(
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

          // Categories Label Row
          HeaderLabel(label: 'Categories'),

          // Categories Items Row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: getCategories(),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          // Popular Now Label Row
          HeaderLabel(label: 'Popular Now'),

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

// Categories Label Row

class HeaderLabel extends StatelessWidget {
  const HeaderLabel({required this.label});

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
                color: Color(0xFF232A30),
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600),
          ),
          Row(
            children: const [
              Text(
                'View all',
                style: TextStyle(
                    color: Color(0xFFFEC562),
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600),
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
