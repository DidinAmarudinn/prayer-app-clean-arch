import 'package:flutter/material.dart';
import 'package:prayer_app/common/constants.dart';

class LocationTextField extends StatelessWidget {
  final double width;
  const LocationTextField({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        hintText: "Enter your location....",
        hintStyle: secondaryTextStyle.copyWith(fontWeight: light),
        prefixIcon:const Icon(Icons.search,color: Colors.grey,),
        suffixIcon:const Icon(Icons.gps_fixed_outlined,color: Colors.grey,),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(width: 2, color: kprimaryCollor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
