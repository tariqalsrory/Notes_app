part of 'note_cubit.dart';
class NoteCubitSate{}

class NotesInitail extends NoteCubitSate{}
class NotesIsLoading extends NoteCubitSate{}
class NoteSSuccess extends NoteCubitSate{
  final List<NoteModel> noteslist;

  NoteSSuccess(this.noteslist);
}
class NotesFailur extends NoteCubitSate{
  final String messageError;

  NotesFailur(this.messageError);
}

