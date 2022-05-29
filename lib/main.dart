import 'package:calculator/segitiga.dart';
import 'package:calculator/shape.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Widget Parent
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hitung Volume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hitung Volume'),
    );
  }
}

//Halaman Home
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //List shape
  List<String> shapes = ["Segitiga", "Persegi", "Persegi Panjang", "Lingkaran"];

  //Fungsi untuk pindah halaman saat item di Tap
  GestureTapCallback onItemTap(String shape) {
    if (shape == "Segitiga") {
      return () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SegitigaPage()),
        );
      };
    } else if (shape == "Persegi") {
      return () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SegitigaPage()),
        );
      };
    } else if (shape == "Persegi Panjang") {
      return () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SegitigaPage()),
        );
      };
    } else {
      return () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SegitigaPage()),
        );
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        primary: false,
        physics: const ClampingScrollPhysics(),
        itemCount: shapes.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 5.0 / 6.0,
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          Widget? icon;
          //Definisi icon dari setiap item
          switch (shapes[index]) {
            case "Segitiga":
              icon = CustomPaint(
                painter: TrianglePainter(
                  strokeColor: Colors.white,
                  strokeWidth: 10,
                  paintingStyle: PaintingStyle.fill,
                ),
                child: const SizedBox(
                  height: 180,
                  width: 200,
                ),
              );
              break;
            case "Persegi":
              icon = Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
              );
              break;
            case "Persegi Panjang":
              icon = Container(
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
              );
              break;
            case "Lingkaran":
              icon = Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.white,
                ),
              );
              break;
            default:
          }
          //item
          return GestureDetector(
            onTap: onItemTap(shapes[index]),
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  // icon
                  icon!,
                  const SizedBox(height: 10),
                  // title
                  Text(shapes[index]),
                ],
              ),
            ),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
