import 'package:flutter/material.dart';
import 'package:hivep2/widget/serach_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title , required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text(
          "Notes",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        const Spacer(),
        SearchItem(icon: icon,)
      ],
    );
  }
}
