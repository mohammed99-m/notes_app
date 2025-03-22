import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hivep2/cubits/add_note_cubit/add_note_state.dart';
import 'package:hivep2/models/note_model.dart';
import 'package:hivep2/widget/custom_button.dart';

import '../cubits/add_note_cubit/add_note_cubit.dart';
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
          const SizedBox(height:32,),
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

          BlocBuilder<AddNoteCubit, AddNotesStates>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNotesLoadingState?true:false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var note = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        colorCode: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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
