import 'package:flutter/material.dart';

/// Flutter code sample for [Card].

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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Color.fromARGB(255, 0, 106, 255),
          title:
              const Text('Mc Flutter', style: TextStyle(color: Colors.white)),
        ),
        body: const Column(
          children: <Widget>[
            OutlinedCardExample(),
          ],
        ),
      ),
    );
  }
}

class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
        child: const SizedBox(
          width: double.infinity,
          height: 150,
          child: Center(
              child: Column(
            children: [
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('123 Main Street',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15)),
                    ),
                    Expanded(
                      child: Text('(415) 555-0198',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15)),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('123 Main Street',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15)),
                    ),
                    Expanded(
                      child: Text('(415) 555-0198',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15)),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Icon(
                        Icons.accessibility,
                        color: Colors.black,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.timer,
                        color: Colors.black,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.smartphone,
                        color: Colors.black,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.smartphone,
                        color: Colors.black,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
