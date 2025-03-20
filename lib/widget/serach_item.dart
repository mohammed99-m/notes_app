import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey.withOpacity(0.1)
        ),
        child: const Center(
          child: Icon(Icons.search_rounded),
        ),
      ),
    );
  }
}
