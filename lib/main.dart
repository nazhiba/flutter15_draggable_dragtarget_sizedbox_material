import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  bool isAccepted = false;
  Color? TargetColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Latihan Dragable"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                data: color1,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.black12,
                    shape: StadiumBorder(),
                    elevation: 0,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1.withOpacity(0.7),
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
              ),
              Draggable<Color>(
                data: color2,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2,
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.black12,
                    shape: StadiumBorder(),
                    elevation: 0,
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2.withOpacity(0.7),
                    shape: StadiumBorder(),
                    elevation: 3,
                  ),
                ),
              ),
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (value) => true,
            onAccept: (value) {
              isAccepted = true;
              TargetColor = value;
            },
            builder: (context, candidates, rejected) {
              return (isAccepted)
                  ? SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: TargetColor,
                        shape: StadiumBorder(),
                      ),
                    )
                  : SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: Colors.black12.withOpacity(0.3),
                        shape: StadiumBorder(),
                      ),
                    );
            },
          ),
        ],
      ),
    ));
  }
}
