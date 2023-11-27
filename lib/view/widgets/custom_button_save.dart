import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButtonSave extends StatelessWidget {
  const CustomButtonSave({super.key, this.ontap, this.isloading = false, required this.label});
  
  final String label;
  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration: BoxDecoration(
            color: kprimarycolor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: isloading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                )
              :  Text(
                  label,
                  style:const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
