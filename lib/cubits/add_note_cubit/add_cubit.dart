import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_states.dart';

class NotesCubit extends Cubit<NoteStates> {
  NotesCubit() : super(InitailState());
}
