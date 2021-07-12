import 'package:flutter/material.dart';

class ToHolo extends StatefulWidget {
  final widget;

  const ToHolo({Key key, this.widget}) : super(key: key);

  @override
  _ToHoloState createState() => _ToHoloState();
}

class _ToHoloState extends State<ToHolo> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
        //   for (var i = 0; i < 3; i++)
        //     Positioned(
        //       top: i * 60.0,
        //       child: Container(
        //         child: widget.widget,
        //         width: 100,
        //         height: 100,
        //       ),
        //     )
        // ],
        // children: [
          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Align(
              child: RotatedBox(
                  quarterTurns: 90,
                  child: Container(child: widget.widget, width: 150, height: 150)),
              alignment: Alignment.topCenter,
            ),
          ),
          Align(
            child: RotatedBox(
              quarterTurns: 3,
              child: Container(
                child: Center(child: widget.widget),
                width: 150,
                height: 200,
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          Align(
            child: RotatedBox(
                quarterTurns: 3,
                child: Container(child: widget.widget, width: 100, height: 150)),
            alignment: Alignment.centerRight,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 120.0),
            child: Align(
              child: Container(child: widget.widget, width: 100, height: 150),
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
