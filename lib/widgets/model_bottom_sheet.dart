import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_cubit.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_states.dart';
import 'package:notes/widgets/note_form.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNoteStates>(
          listener: (context, state) {
        if (state is SuccessState) {
          Navigator.pop(context);
        } else if (state is ErrorState) {
          print('Failed  ${state.errormessage}');
        }
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is LoadingState ? true : false,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(child: AddNoteForm()),
          ),
        );
      }),
    );
  }
}
