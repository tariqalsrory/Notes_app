import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/notemodel.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteSate> {
  AddNoteCubit() : super(AddNoteIntial());

  addnote( note) async {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    emit(AddNoteSuccess());
    try {
      await noteBox.add(note);
    } catch (e) {
      AddNoteFailur(e.toString());
    }
  }
}
