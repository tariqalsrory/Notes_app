
import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButtonSave extends StatelessWidget {
  const CustomButtonSave({super.key, this.ontap});

  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration: BoxDecoration(
          color: kprimarycolor
          ,
          borderRadius: BorderRadius.circular(8)
        ),
        child:const Center(
          child:  Text('Add',
          style:TextStyle( 
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}