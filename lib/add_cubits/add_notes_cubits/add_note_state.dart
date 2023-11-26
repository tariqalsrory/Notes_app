part of'add_note_cubit.dart';

abstract class AddNoteSate{}

class AddNoteIntial extends AddNoteSate{}
class AddNoteInloading extends AddNoteSate{}
class AddNoteSuccess extends AddNoteSate{}
class AddNoteFailur extends AddNoteSate{
  final String messageError;

 AddNoteFailur( this.messageError);

}

  
