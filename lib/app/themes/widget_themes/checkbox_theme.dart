

import 'package:flutter/material.dart';

class TCheckboxTheme {
  TCheckboxTheme._();

  /* -- Light Checkbox Theme -- */
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }
      return Colors.transparent;
    })
    ,
    fillColor:  WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      }
      return Colors.transparent;
    }),
  );
  

  /* -- Dark Checkbox Theme -- */
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }
      return Colors.black;
    })
    ,
    fillColor:  WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      }
      return Colors.transparent;
    }),
  );
}