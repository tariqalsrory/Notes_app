import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/notemodel.dart';

part 'note_cubit_state.dart';

class NoteCubit extends Cubit<NoteCubitSate> {
  NoteCubit() : super(NotesInitail());
 List<NoteModel>? notes;
  fetchAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
  notes = noteBox.values.toList();
  }
}
