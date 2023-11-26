import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit.dart';
import 'package:notes_app/model/notemodel.dart';
import 'package:notes_app/view/edit_note_view.dart';
import 'package:notes_app/view/note_view.dart';

void main() async{
 await Hive.initFlutter();
   await Hive.openBox(kNoteBox);
   Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ( context) => AddNoteCubit(),
        ),
       
      ],
      child: MaterialApp(
        routes: {
          NoteView.id:(context) => const NoteView(),
          EditNoteView.id:(context)=> const EditNoteView(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
        initialRoute:  NoteView.id,
      ),
    );
  }
}
