import 'package:flutter/material.dart';

class CategorieItemContainer extends StatelessWidget {
  const CategorieItemContainer({
    Key? key,
    required this.index,
    required this.imgPath,
    required this.label,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

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
          color: isActive ? const Color(0xFFF54749) : const Color(0xFFF5F5F5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Image.asset(imgPath),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              label,
              style: TextStyle(
                  color: isActive ? Colors.white : const Color(0xFF232A30),
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
