import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CustomPaint(
          size: Size(50, (50 * 1).toDouble()),
          //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainter(),
        ),
      ),
    );
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.9266250, size.height * 0.7687917);
    path.lineTo(size.width * 0.5600833, size.height * 0.1590000);
    path.cubicTo(
        size.width * 0.5472917,
        size.height * 0.1377083,
        size.width * 0.5248333,
        size.height * 0.1250000,
        size.width * 0.5000000,
        size.height * 0.1250000);
    path.cubicTo(
        size.width * 0.4751667,
        size.height * 0.1250000,
        size.width * 0.4527083,
        size.height * 0.1377083,
        size.width * 0.4399583,
        size.height * 0.1589583);
    path.lineTo(size.width * 0.07337500, size.height * 0.7687917);
    path.cubicTo(
        size.width * 0.06037500,
        size.height * 0.7904167,
        size.width * 0.06004167,
        size.height * 0.8174583,
        size.width * 0.07245833,
        size.height * 0.8394167);
    path.cubicTo(
        size.width * 0.08483333,
        size.height * 0.8613750,
        size.width * 0.1082083,
        size.height * 0.8750000,
        size.width * 0.1334583,
        size.height * 0.8750000);
    path.lineTo(size.width * 0.8665833, size.height * 0.8750000);
    path.cubicTo(
        size.width * 0.8917917,
        size.height * 0.8750000,
        size.width * 0.9152083,
        size.height * 0.8613750,
        size.width * 0.9275833,
        size.height * 0.8394167);
    path.cubicTo(
        size.width * 0.9400000,
        size.height * 0.8174583,
        size.width * 0.9396250,
        size.height * 0.7904167,
        size.width * 0.9266250,
        size.height * 0.7687917);
    path.close();
    path.moveTo(size.width * 0.5208333, size.height * 0.7500000);
    path.lineTo(size.width * 0.4791667, size.height * 0.7500000);
    path.cubicTo(
        size.width * 0.4676667,
        size.height * 0.7500000,
        size.width * 0.4583333,
        size.height * 0.7406667,
        size.width * 0.4583333,
        size.height * 0.7291667);
    path.lineTo(size.width * 0.4583333, size.height * 0.6875000);
    path.cubicTo(
        size.width * 0.4583333,
        size.height * 0.6760000,
        size.width * 0.4676667,
        size.height * 0.6666667,
        size.width * 0.4791667,
        size.height * 0.6666667);
    path.lineTo(size.width * 0.5208333, size.height * 0.6666667);
    path.cubicTo(
        size.width * 0.5323333,
        size.height * 0.6666667,
        size.width * 0.5416667,
        size.height * 0.6760000,
        size.width * 0.5416667,
        size.height * 0.6875000);
    path.lineTo(size.width * 0.5416667, size.height * 0.7291667);
    path.cubicTo(
        size.width * 0.5416667,
        size.height * 0.7406667,
        size.width * 0.5323333,
        size.height * 0.7500000,
        size.width * 0.5208333,
        size.height * 0.7500000);
    path.close();
    path.moveTo(size.width * 0.5000000, size.height * 0.5833333);
    path.lineTo(size.width * 0.5000000, size.height * 0.5833333);
    path.cubicTo(
        size.width * 0.4770000,
        size.height * 0.5833333,
        size.width * 0.4583333,
        size.height * 0.5646667,
        size.width * 0.4583333,
        size.height * 0.5416667);
    path.lineTo(size.width * 0.4583333, size.height * 0.4166667);
    path.cubicTo(
        size.width * 0.4583333,
        size.height * 0.3936667,
        size.width * 0.4770000,
        size.height * 0.3750000,
        size.width * 0.5000000,
        size.height * 0.3750000);
    path.lineTo(size.width * 0.5000000, size.height * 0.3750000);
    path.cubicTo(
        size.width * 0.5230000,
        size.height * 0.3750000,
        size.width * 0.5416667,
        size.height * 0.3936667,
        size.width * 0.5416667,
        size.height * 0.4166667);
    path.lineTo(size.width * 0.5416667, size.height * 0.5416667);
    path.cubicTo(
        size.width * 0.5416667,
        size.height * 0.5646667,
        size.width * 0.5230000,
        size.height * 0.5833333,
        size.width * 0.5000000,
        size.height * 0.5833333);
    path.close();

    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.color = Colors.red;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
