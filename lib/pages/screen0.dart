import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pastry_app/pages/activity.dart';
import 'package:pastry_app/pages/checkout.dart';
import 'package:pastry_app/pages/home.dart';

class Screen0 extends StatefulWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  State<Screen0> createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {
  int selectedIndex = 0;

  void _navigateBottomNavigationBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [const HomePage(), const ActivityPage(), const CheckoutPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const AppBarIconContainer(icon: Icons.dashboard_customize_rounded),
        centerTitle: true,
        title: titleRow(),
        actions: const [
          AppBarImgContainer(
            imgPath: 'assets/images/emoji_happy.png',
          ),
        ],
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: _navigateBottomNavigationBar,
          fixedColor: const Color(0xFFF54749),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(IconlyBold.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(IconlyBold.heart), label: 'Favorites'),
            BottomNavigationBarItem(icon: Icon(IconlyBold.bag), label: 'Cart'),
          ]),
    );
  }

  Row titleRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Icon(
        IconlyBold.location,
        color: Color(0xFFF54749),
        size: 18,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        'Brazza, Congo',
        style: TextStyle(color: Color(0xFF232A30), fontSize: 18, fontFamily: 'Roboto', fontWeight: FontWeight.w600),
      ),
      SizedBox(
        width: 5,
      ),
      Icon(
        Icons.keyboard_arrow_down_outlined,
        color: Color(0xFFFEC562),
        size: 22,
      ),
    ]);
  }
}

class AppBarIconContainer extends StatelessWidget {
  const AppBarIconContainer({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 4, 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink.shade100.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: const Color(0xFF232A30).withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}

class AppBarImgContainer extends StatelessWidget {
  const AppBarImgContainer({Key? key, required this.imgPath}) : super(key: key);

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 8, 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink.shade100.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset(imgPath),
        ),
      ),
    );
  }
}
