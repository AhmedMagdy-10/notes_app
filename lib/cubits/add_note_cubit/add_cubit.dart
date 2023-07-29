import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:notes/cubits/add_note_cubit/add_notes_states.dart';
import '../../model/note_model.dart';

class AddNotesCubit extends Cubit<AddNoteStates> {
  AddNotesCubit() : super(InitailState());
  NoteModel? note;
  Color? color = Colors.blue;
  void addNote(NoteModel note) async {
    note.color = color!.value;
    emit(LoadingState());
    try {
      var noteBox = Hive.box<NoteModel>('notes_box');
      await noteBox.add(note);
      emit(SuccessState());
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
