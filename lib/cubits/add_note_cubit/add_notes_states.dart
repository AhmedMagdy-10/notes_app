abstract class NoteStates {}

class InitailState extends NoteStates {}

class LoadingState extends NoteStates {}

class SuccessState extends NoteStates {}

class ErrorState extends NoteStates {
  final String errormessage;

  ErrorState(this.errormessage);
}
