import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hivep2/cubits/notes_cubit/notes_cubit.dart';
import 'package:hivep2/widget/add_node_buttom_sheet.dart';
import 'package:hivep2/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddNodeButtomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesBudy());
  }
}

