import 'package:flutter/material.dart';
import 'package:hivep2/widget/serach_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
         Text("Notes",style: TextStyle(fontSize: 28 , color: Colors.white),),
         Spacer(),
         SearchItem()
      ],
    );
  }
}
