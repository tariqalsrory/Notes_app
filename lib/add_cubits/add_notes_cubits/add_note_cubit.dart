import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/notemodel.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteSate> {
  AddNoteCubit() : super(AddNoteIntial());
  Color color = Color(0xffAC3931);
  addnote(NoteModel note) async {
    note.color=color.value;
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
