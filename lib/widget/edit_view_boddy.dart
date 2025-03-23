import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hivep2/cubits/notes_cubit/notes_cubit.dart';
import 'package:hivep2/models/note_model.dart';
import 'package:hivep2/widget/custom_appbar.dart';
import 'package:hivep2/widget/custom_text_field.dart';

class EditNodeViewBody extends StatefulWidget {
  const EditNodeViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNodeViewBody> createState() => _EditNodeViewBodyState();
}

class _EditNodeViewBodyState extends State<EditNodeViewBody> {
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
               BlocProvider.of<NotesCubit>(context).fechAllNotes();
              Navigator.pop(context);
            },
            icon: Icons.check,
            title: "Edit",
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.note.title),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.subtitle,
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
