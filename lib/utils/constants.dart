import 'package:pastry_app/utils/categorie_item_model.dart';
import 'package:pastry_app/utils/item_model.dart';

List<CategorieItem> categorieItemList = [
  CategorieItem(
    index: 0,
    imgPath: 'assets/images/emoji_hamburger.png',
    label: 'Burger',
    isSelected: true,
  ),
  CategorieItem(
    index: 1,
    imgPath: 'assets/images/emoji_icecream.png',
    label: 'Ice Cream',
    isSelected: false,
  ),
  CategorieItem(
    index: 2,
    imgPath: 'assets/images/emoji_juice.png',
    label: 'Juice',
    isSelected: false,
  ),
  CategorieItem(
    index: 3,
    imgPath: 'assets/images/emoji_cake.png',
    label: 'Cake',
    isSelected: false,
  ),
  CategorieItem(
    index: 4,
    imgPath: 'assets/images/emoji_pizza.png',
    label: 'Pizza',
    isSelected: false,
  ),
];

List<Item> hamburgerList = [
  Item(
    index: 0,
    type: 'hamburger',
    imgPath: 'assets/images/hamburger 1.jpg',
    label: 'Beef Burger',
    price: 13,
    avgRates: 4.5,
    nbRates: 102,
  ),
  Item(
    index: 1,
    type: 'hamburger',
    imgPath: 'assets/images/hamburger 2.jpg',
    label: 'Magic Burger',
    price: 8,
    avgRates: 5,
    nbRates: 30,
  ),
  Item(
    index: 2,
    type: 'hamburger',
    imgPath: 'assets/images/hamburger 3.jpg',
    label: 'King Burger',
    price: 11,
    avgRates: 3.5,
    nbRates: 48,
  ),
];

List<Item> pizzaList = [
  Item(
    index: 0,
    type: 'pizza',
    imgPath: 'assets/images/pizza 1.jpg',
    label: 'Pizza Monalisa',
    price: 13,
    avgRates: 3.5,
    nbRates: 95,
  ),
  Item(
    index: 1,
    type: 'pizza',
    imgPath: 'assets/images/pizza 2.jpg',
    label: 'Pie Salad',
    price: 15,
    avgRates: 5,
    nbRates: 304,
  ),
  Item(
    index: 2,
    type: 'pizza',
    imgPath: 'assets/images/pizza 3.jpg',
    label: 'Pizza 2Z',
    price: 17,
    avgRates: 4,
    nbRates: 193,
  ),
];

List<Item> cakeList = [
  Item(
    index: 0,
    type: 'cake',
    imgPath: 'assets/images/cake 1.jpg',
    label: 'Cocoa Cake',
    price: 8,
    avgRates: 5,
    nbRates: 43,
  ),
  Item(
    index: 1,
    type: 'cake',
    imgPath: 'assets/images/cake 2.jpg',
    label: 'Sweet Cake',
    price: 4,
    avgRates: 4.1,
    nbRates: 81,
  ),
  Item(
    index: 2,
    type: 'cake',
    imgPath: 'assets/images/cake 3.jpg',
    label: 'Exotic Cake',
    price: 4,
    avgRates: 4.4,
    nbRates: 430,
  ),
];

List<Item> juiceList = [
  Item(
    index: 0,
    type: 'juice',
    imgPath: 'assets/images/juice 1.jpg',
    label: 'Cocoa Juice',
    price: 10,
    avgRates: 3,
    nbRates: 334,
  ),
  Item(
    index: 1,
    type: 'juice',
    imgPath: 'assets/images/juice 2.jpg',
    label: 'Sweet Juice',
    price: 13,
    avgRates: 4.3,
    nbRates: 34,
  ),
  Item(
    index: 2,
    type: 'juice',
    imgPath: 'assets/images/juice 3.jpg',
    label: 'Exotic Juice',
    price: 9,
    avgRates: 3.1,
    nbRates: 293,
  ),
];

List<Item> iceCreamList = [
  Item(
    index: 0,
    type: 'icecream',
    imgPath: 'assets/images/icecream 1.jpg',
    label: 'Frapazella Cream',
    price: 11,
    avgRates: 5,
    nbRates: 740,
  ),
  Item(
    index: 1,
    type: 'icecream',
    imgPath: 'assets/images/icecream 2.jpg',
    label: 'Cool Ice',
    price: 9,
    avgRates: 4.0,
    nbRates: 43,
  ),
  Item(
    index: 2,
    type: 'icecream',
    imgPath: 'assets/images/icecream 3.jpg',
    label: 'Fanatic Ice Cream',
    price: 10,
    avgRates: 4.1,
    nbRates: 93,
  ),
];
