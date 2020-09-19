import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      title: 'Countly',
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        accentColor: Colors.grey,
        baseColor: Color(0xFFFFFFFF),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: CountlyMain(),
    );
  }
}

class CountlyMain extends StatefulWidget {
  @override
  _CountlyMainState createState() => _CountlyMainState();
}

class _CountlyMainState extends State<CountlyMain> {
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NeumorphicAppBar(
          actions: [
            NeumorphicButton(
              child: Icon(
                Icons.info_outline_rounded,
              ),
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(100))),
              onPressed: () {
                showAboutDialog(
                    context: context,
                    applicationVersion: '1.0.0',
                    applicationName: 'Countly',
                    applicationLegalese:
                        '(C) 2020, The Coder Man. Made in Flutter. Uses Neumorphic Design.');
              },
            )
          ],
          title: Text(
            'Countly',
            style: TextStyle(
              fontFamily: 'SFPRO',
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '$countNum',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 60.0,
                            fontFamily: 'SFPRO',
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            NeumorphicButton(
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(100)),
                                depth: 8,
                                lightSource: LightSource.topLeft,
                              ),
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  countNum = countNum - 1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 175,
                            ),
                            NeumorphicButton(
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(100)),
                                depth: 8,
                                lightSource: LightSource.topLeft,
                              ),
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  countNum = countNum + 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
