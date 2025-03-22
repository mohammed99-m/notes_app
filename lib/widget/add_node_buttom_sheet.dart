import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hivep2/constatns.dart';
import 'package:hivep2/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:hivep2/cubits/add_note_cubit/add_note_state.dart';
import 'package:hivep2/cubits/notes_cubit/notes_cubit.dart';
import 'package:hivep2/widget/add_note_form.dart';
import 'package:hivep2/widget/custom_button.dart';
import 'package:hivep2/widget/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNodeButtomSheet extends StatelessWidget {
  const AddNodeButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNotesStates>(
        listener: (context, state) {
          if (state is ADDNotesFailedState) {
            print(state.errorMessage);
          }

          if (state is AddNoTesSuccessState) {
            BlocProvider.of<NotesCubit>(context).fechAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoadingState ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: AddNodeForm()),
            ),
          );
        },
      ),
    );
  }
}
