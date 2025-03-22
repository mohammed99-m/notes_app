import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hivep2/cubits/notes_cubit/notes_cubit.dart';
import 'package:hivep2/widget/custom_appbar.dart';
import 'package:hivep2/widget/notes_list_view.dart';

class NotesBudy extends StatefulWidget {
  const NotesBudy({super.key});

  @override
  State<NotesBudy> createState() => _NotesBudyState();
}

class _NotesBudyState extends State<NotesBudy> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fechAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(
            icon: Icons.search,
            title: "Notes",
          ),
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
