import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/notemodel.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteSate> {
  AddNoteCubit() : super(AddNoteIntial());

  addnote(NoteModel note) async {
          emit(AddNoteInloading());

    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
     emit( AddNoteFailur(e.toString()));
    }
  }
}
