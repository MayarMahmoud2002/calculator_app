import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
              Color.fromRGBO(144, 197, 236, 1.0),
              Color.fromRGBO(183, 179, 146, 1.0),
            ],
                begin: Alignment.topCenter,
              end: Alignment.bottomCenter,

            ),
          ),

        ),

      ),
    );
  }
}
