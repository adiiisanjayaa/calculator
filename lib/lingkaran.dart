import 'package:flutter/material.dart';

// kelas halaman segitiga
class LingkaranPage extends StatefulWidget {
  const LingkaranPage({Key? key}) : super(key: key);

  @override
  LingkaranPageState createState() => LingkaranPageState();
}

class LingkaranPageState extends State<LingkaranPage> {
  // controller untuk menangkap nilai yang diinputkan
  TextEditingController r = TextEditingController();
  TextEditingController tinggi = TextEditingController();
  // variable hasil untuk menampilkan hasil pergitungan
  String hasil = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hitung Volume Lingkaran"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //text field alas
              TextFormField(
                controller: r,
                decoration: const InputDecoration(
                  hintText: "r atau jari-jari",
                ),
              ),
              const SizedBox(height: 10),
              //text field tinggi
              TextFormField(
                controller: tinggi,
                decoration: const InputDecoration(
                  hintText: "Tinggi",
                ),
              ),
              const SizedBox(height: 10),
              //button untuk menghitung
              InkWell(
                onTap: () {
                  if (r.text.isNotEmpty && tinggi.text.isNotEmpty) {
                    //rumus
                    var h = 22 /
                        7 *
                        double.parse(r.text) *
                        double.parse(r.text) *
                        double.parse(tinggi.text);
                    // gunakan setstate untuk menampilkan hasil ke layar hp
                    setState(() {
                      hasil = h.toString();
                    });
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(color: Colors.blue),
                  alignment: Alignment.center,
                  child: const Text(
                    "Hitung",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //tampilkan hasil
              Text(
                "Volume Lingkaran = $hasil",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.red, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
