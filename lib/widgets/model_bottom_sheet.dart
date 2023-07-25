import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubits/add_note_cubit/add_cubit.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_states.dart';
import 'package:notes/widgets/note_form.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
          child: BlocConsumer<AddNotesCubit, AddNoteStates>(
              listener: (context, state) {
        if (state is SuccessState) {
        } else if (State is ErrorState) {}
      }, builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is LoadingState ? true : false,
            child: const AddNoteForm());
      })),
    );
  }
}
