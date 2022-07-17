import 'package:flutter/material.dart';

class categorieItemContainer extends StatelessWidget {
  const categorieItemContainer({
    required this.index,
    required this.imgPath,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  final int index;
  final String imgPath;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        height: 50,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isActive ? Color(0xFFF54749) : Color(0xFFF5F5F5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Image.asset(imgPath),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              label,
              style: TextStyle(
                  color: isActive ? Colors.white : Color(0xFF232A30),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
