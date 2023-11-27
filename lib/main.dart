import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/add_cubits/add_notes_cubits/add_note_cubit.dart';
import 'package:notes_app/add_cubits/cubit/note_cubit.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/notemodel.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/view/edit_note_view.dart';
import 'package:notes_app/view/note_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNoteBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider(
          create: (context) => NoteCubit(),
        ),
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        routes: {
          NoteView.id: (context) => const NoteView(),
          EditNoteView.id: (context) => const EditNoteView(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        initialRoute: NoteView.id,
      ),
    );
  }
}
