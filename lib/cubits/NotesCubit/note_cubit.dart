import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/cubits/NotesCubit/notes_state.dart';
import 'package:notes/model/note_model.dart';

class NoteCubit extends Cubit<NotesState> {
  NoteCubit() : super(InitailNoteState());
  List<NoteModel>? notes;
  getAllNotes() {
    var noteBox = Hive.box<NoteModel>('notes_box');

    notes = noteBox.values.toList();
  }
}
