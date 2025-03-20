import 'package:flutter/material.dart';
import 'package:hivep2/widget/custom_text_field.dart';

class AddNodeButtomSheet extends StatelessWidget {
  const AddNodeButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          // SizedBox(height:32,),
          // Text("Helll"),
          CustomTextField(hintText:'title',maxLines: 1,),
          SizedBox(height:10,),
          CustomTextField(hintText:'content',maxLines: 5,),
        ],
      ),
    );
  }
}
