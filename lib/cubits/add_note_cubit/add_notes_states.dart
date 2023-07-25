abstract class AddNoteStates {}

class InitailState extends AddNoteStates {}

class LoadingState extends AddNoteStates {}

class SuccessState extends AddNoteStates {}

class ErrorState extends AddNoteStates {
  final String errormessage;

  ErrorState(this.errormessage);
}
