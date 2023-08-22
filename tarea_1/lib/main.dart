import 'package:flutter/material.dart';

/// Flutter code sample for [IconButton] with toggle feature.

void main() {
  runApp(const McFlutter());
}

class McFlutter extends StatelessWidget {
  const McFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
        title: 'Icon Button Types',
        home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: const Color.fromARGB(255, 0, 106, 255),
            title:
                const Text('Mc Flutter', style: TextStyle(color: Colors.white)),
          ),
          body: const Column(
            children: <Widget>[
              DemoIconToggleButtons(),
            ],
          ),
        ));
  }
}

class DemoIconToggleButtons extends StatefulWidget {
  const DemoIconToggleButtons({super.key});

  @override
  State<DemoIconToggleButtons> createState() => _DemoIconToggleButtonsState();
}

class _DemoIconToggleButtonsState extends State<DemoIconToggleButtons> {
  bool standardSelected = false;
  bool standardSelected2 = false;
  Color _iconColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    SizedBox(
                      width: 100,
                    ),
                    Icon(
                      Icons.account_circle,
                      color: Colors.black,
                      size: 50.0,
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          Text(
                            'Flutter McFlutter',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Experienced App Developer',
                            //textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text('123 Main Street',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15)),
                    ),
                    Expanded(
                      child: Text('(415) 555-0198',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Column(
                      children: [
                        SizedBox(
                          width: 3,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          isSelected: standardSelected,
                          icon: Icon(Icons.accessibility, color: _iconColor),
                          onPressed: () {
                            setState(() {
                              standardSelected = !standardSelected;
                              if (standardSelected == false) {
                                _iconColor = Colors.cyan;
                              } else {
                                _iconColor = Colors.black;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          isSelected: standardSelected2,
                          icon: Icon(Icons.timer, color: Colors.black),
                          onPressed: () {
                            final snackBar = SnackBar(
                              content: const Text('Yay! A SnackBar!'),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {},
                              ),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [Icon(Icons.smartphone, color: Colors.black)],
                    ),
                    Column(
                      children: [Icon(Icons.smartphone, color: Colors.black)],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 1,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
