import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubits/add_note_cubit/add_cubit.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_states.dart';
import 'package:notes/model/note_model.dart';

import 'custom_bottom.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          customTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          customTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<AddNotesCubit, AddNoteStates>(builder: (context, state) {
            return customBottom(
              isloading: state is LoadingState ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var currentDate = DateTime.now();
                  var formatDate = DateFormat('dd-mm-yyyy').format(currentDate);
                  var modelNote = NoteModel(
                      title: title!,
                      subTitle: subtitle!,
                      date: formatDate,
                      color: Colors.cyan.value);
                  BlocProvider.of<AddNotesCubit>(context).addNote(modelNote);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
          }),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
