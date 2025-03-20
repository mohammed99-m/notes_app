import 'package:flutter/material.dart';
import 'package:hivep2/widget/custom_appbar.dart';
import 'package:hivep2/widget/custom_text_field.dart';

class EditNodeViewBody extends StatelessWidget {
  const EditNodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: Icons.check,
            title: "Edit",
          ),
          SizedBox(height: 50,),
          CustomTextField(hintText:"Title"),
          SizedBox(height: 16,),
          CustomTextField(hintText: "Content",maxLines: 5,)
        ],
      ),
    );
  }
}
