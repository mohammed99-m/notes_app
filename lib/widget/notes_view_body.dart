import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hivep2/widget/custom_appbar.dart';
import 'package:hivep2/widget/notes_list_view.dart';

class NotesBudy extends StatelessWidget {
  const NotesBudy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(25),
      child: Column(
        children: [
           SizedBox(
            height: 30,
          ),
           CustomAppBar(),
           SizedBox(
            height: 20,
          ),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}
