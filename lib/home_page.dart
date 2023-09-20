import 'package:calculator_app/click_btn.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var textResult = '';



  List<Color> FirstRowContainersColors = [
    Color.fromRGBO(255, 193, 7, 1.0),
    Color.fromRGBO(222, 209, 169, 1.0),
    Color.fromRGBO(222, 209, 169, 1.0),
    Color.fromRGBO(77, 158, 192, 1.0),
  ];

  List<Color> SecondRowContainersColors = [
    Color.fromRGBO(222, 209, 169, 1.0),
    Color.fromRGBO(222, 209, 169, 1.0),
    Color.fromRGBO(222, 209, 169, 1.0),
    Color.fromRGBO(77, 158, 192, 1.0),
  ];

  List<Color> ThirdRowContainersColors = [
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(77, 158, 192, 1.0),
  ];

  List<Color> FourthRowContainersColors = [
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(77, 158, 192, 1.0),
  ];

  List<Color> FifthRowContainersColors = [
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(77, 158, 192, 1.0),
  ];

  List<Color> SixRowContainersColors = [
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(182, 205, 219, 1.0),
    Color.fromRGBO(77, 158, 192, 1.0),
  ];

  List <Widget> FirstRowNumbers = [];
  List <Widget> SecondRowNumbers = [];
  List <Widget> ThirdRowNumbers = [];
  List <Widget> FourthRowNumbers = [];
  List <Widget> FifthRowNumbers = [];
  List <Widget> SixthRowNumbers = [];




  @override
  void initState() {
    super.initState();
    FirstRowNumbers = [
      ClickBtn(title: 'C', clickBtnFunc:onTitleClick),
      ClickBtn(title: '(', clickBtnFunc: onTitleClick),
      ClickBtn(title: ')', clickBtnFunc: onTitleClick),
      ClickBtn(title: 'x', clickBtnFunc: onTitleClick),



    ];
    SecondRowNumbers =
    [
      ClickBtn(title: '√', clickBtnFunc: onTitleClick),
      ClickBtn(title: ' ', clickBtnFunc: onTitleClick),
      ClickBtn(title: ' ', clickBtnFunc: onTitleClick),
      ClickBtn(title: '/', clickBtnFunc: onTitleClick),




    ];
    ThirdRowNumbers =
    [
      ClickBtn(title: '7', clickBtnFunc: onTitleClick),
      ClickBtn(title: '8', clickBtnFunc: onTitleClick),
      ClickBtn(title: '9', clickBtnFunc: onTitleClick),
      ClickBtn(title: '-', clickBtnFunc: onTitleClick),



    ];
    FourthRowNumbers =
        [
          ClickBtn(title: '4', clickBtnFunc: onTitleClick),
          ClickBtn(title: '5', clickBtnFunc: onTitleClick),
          ClickBtn(title: '6', clickBtnFunc: onTitleClick),
          ClickBtn(title: '+', clickBtnFunc: onTitleClick),



        ];
    FifthRowNumbers =
    [
      ClickBtn(title: '1', clickBtnFunc: onTitleClick),
      ClickBtn(title: '2', clickBtnFunc: onTitleClick),
      ClickBtn(title: '3', clickBtnFunc: onTitleClick),


    ];
    SixthRowNumbers =
    [
      ClickBtn(title: '.', clickBtnFunc: onTitleClick),
      ClickBtn(title: '0', clickBtnFunc: onTitleClick),
      ClickBtn(title: 'x', clickBtnFunc: onTitleClick),


    ];

  }


  bool forAndroid = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(16, 35, 51, 1.0),
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
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  // color:Colors.yellow ,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text('${textResult}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  height: 120.0,
                  width: 190,
                  // color: Colors.red,
                ),

                Container(
                  // color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25.0 , left: 13.0),
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 1.2,
                          child: Switch(
                              activeThumbImage:
                              AssetImage('assets/images/lightmood.png'),
                              activeTrackColor:
                              Color.fromRGBO(182, 205, 219, 1.0),
                              inactiveThumbImage: AssetImage(
                                'assets/images/darkmode.png',
                              ),
                              inactiveTrackColor:
                              Color.fromRGBO(182, 205, 219, 1.0),
                              splashRadius: 50.0,
                              value: forAndroid,
                              onChanged: (value) =>
                                  setState(() => forAndroid = value)),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text ('Switch to Dark mode' ,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0
                        ),
                        ),
                      ],
                    ),
                  ),

                ),

                SizedBox(
                  height: 5.0,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Container(
                      // color: Colors.yellow,
                      alignment: Alignment.bottomCenter,
                      height: double.infinity,

                      // color : Colors.blue,
                      child: SingleChildScrollView(
                        child: Column(

                          children: [
                            Row(
                              children: [
                                for (var i = 0; i < 4; i++)
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Material(
                                      borderRadius: BorderRadius.circular(35.0),

                                      elevation: 5.0,
                                      child: Container(
                                        height: 55.0,
                                        width: 75.0,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            // BoxShadow(
                                            //   color: Colors.black26,
                                            //   blurRadius: 50.0,
                                            // )
                                          ],
                                          color: FirstRowContainersColors[i],
                                          borderRadius: BorderRadius.circular(30.0),
                                        ),
                                        child: FirstRowNumbers[i],
                                      ),
                                    ),
                                  )
                              ],
                            ),
                            Row(
                              children: [
                                for (var j = 0; j < 4; j++)
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Material(
                                      elevation: 5,
                                      borderRadius: BorderRadius.circular(30.0),

                                      child: Container(
                                        height: 55.0,
                                        width: 75.0,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            // BoxShadow(
                                            //   color: Colors.black12,
                                            //   blurRadius: 35.0,
                                            // )
                                          ],
                                          color: SecondRowContainersColors[j],
                                          borderRadius: BorderRadius.circular(30.0),
                                        ),
                                        child: SecondRowNumbers[j],
                                      ),
                                    ),
                                  )
                              ],
                            ),
                            Row(
                              children: [
                                for (var p = 0; p < 4; p++)
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Material(
                                      borderRadius: BorderRadius.circular(30.0),
                                      elevation: 5.0,
                                      child: Container(
                                        height: 60.0,
                                        width: 75.0,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            // BoxShadow(
                                            //   color: Colors.black12,
                                            //   blurRadius: 35.0,
                                            // )
                                          ],
                                          color: ThirdRowContainersColors[p],
                                          borderRadius: BorderRadius.circular(30.0),
                                        ),
                                        child: ThirdRowNumbers[p],
                                      ),
                                    ),
                                  )
                              ],
                            ),
                            Row(
                              children: [
                                for (var v = 0; v < 4; v++)
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Material(
                                      borderRadius: BorderRadius.circular(30.0),
                                      elevation: 5.0,

                                      child: Container(
                                        height: 60.0,
                                        width: 75.0,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            // BoxShadow(
                                            //   color: Colors.black12,
                                            //   blurRadius: 35.0,
                                            // )
                                          ],
                                          color: FourthRowContainersColors[v],
                                          borderRadius: BorderRadius.circular(30.0),
                                        ),
                                        child: FourthRowNumbers[v],
                                      ),
                                    ),
                                  )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        for (var i = 0; i < 3; i++)
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Material(
                                              borderRadius: BorderRadius.circular(30.0),
                                              elevation: 5.0,

                                              child: Container(
                                                height: 60.0,
                                                width: 75.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    // BoxShadow(
                                                    //   color: Colors.black12,
                                                    //   blurRadius: 35.0,
                                                    // )
                                                  ],
                                                  color:
                                                      FifthRowContainersColors[i],
                                                  borderRadius: BorderRadius.circular(30.0),
                                                ),
                                                child: FifthRowNumbers[i],
                                              ),
                                            ),
                                          )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        for (var l = 0; l < 3; l++)
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Material(
                                              borderRadius: BorderRadius.circular(30.0),
                                              elevation: 5.0,

                                              child: Container(
                                                height: 60.0,
                                                width: 75.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    // BoxShadow(
                                                    //   color: Colors.black12,
                                                    //   blurRadius: 35.0,
                                                    // )
                                                  ],
                                                  color: SixRowContainersColors[l],
                                                  borderRadius: BorderRadius.circular(30.0),
                                                ),
                                                child: SixthRowNumbers[l],
                                              ),
                                            ),
                                          )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 18.0),
                                    child: Material(
                                      borderRadius: BorderRadius.circular(66.0),
                                      elevation: 5.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(77, 158, 192, 1.0),
                                            borderRadius: BorderRadius.circular(66.0)),
                                        height: 145.0,
                                        child: Center(
                                          child: Text(
                                            '=',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 27.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void onTitleClick (title)
  {
    setState(() {
      textResult+= title;


    });


  }
}


