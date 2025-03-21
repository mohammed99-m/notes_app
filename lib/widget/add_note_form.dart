import 'package:flutter/material.dart';
import 'package:hivep2/widget/custom_button.dart';

import 'custom_text_field.dart';

class AddNodeForm extends StatefulWidget {
  const AddNodeForm({
    super.key,
  });

  @override
  State<AddNodeForm> createState() => _AddNodeFormState();
}

class _AddNodeFormState extends State<AddNodeForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          // SizedBox(height:32,),
          // Text("Helll"),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'title',
            maxLines: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hintText: 'content',
            maxLines: 5,
          ),

          const SizedBox(
            height: 50,
          ),

          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
