import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/notemodel.dart';

part 'note_cubit_state.dart';

class NoteCubit extends  Cubit<NoteCubitSate> {
  NoteCubit() : super(NotesInitail());

  fetchAllNotes() async {
       emit(NotesInitail());

    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      
      emit(NoteSSuccess(
        await noteBox.values.toList()
      ));
    } catch (e) {
     emit( NotesFailur(e.toString()));
    }
  }
  
}