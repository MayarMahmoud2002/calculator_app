import 'package:flutter/material.dart';

class ClickBtn extends StatelessWidget {
  final String title;
  Function(String) clickBtnFunc;

   ClickBtn({required this.title, required this.clickBtnFunc});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: MaterialButton(
          onPressed: () {
            clickBtnFunc(title);
          },
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 27.0),
          ),
        ));

  }
}

//Container(
//                                     height: 50.0,
//                                     width: 75.0,
//                                     decoration: BoxDecoration(
//                                       boxShadow: [
//                                         // BoxShadow(
//                                         //   color: Colors.black12,
//                                         //   blurRadius: 35.0,
//                                         // )
//                                       ],
//                                       color: FirstRowContainersColors[i],
//                                       borderRadius: BorderRadius.circular(30.0),
//                                     ),
//                                     child: FirstRowStrings[i],
//                                   ),

