import 'package:flutter/material.dart';

// kelas halaman segitiga
class SegitigaPage extends StatefulWidget {
  const SegitigaPage({Key? key}) : super(key: key);

  @override
  SegitigaPageState createState() => SegitigaPageState();
}

class SegitigaPageState extends State<SegitigaPage> {
  // controller untuk menangkap nilai yang diinputkan
  TextEditingController alas = TextEditingController();
  TextEditingController tinggi = TextEditingController();
  // variable hasil untuk menampilkan hasil pergitungan
  String hasil = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hitung Volume Segitiga"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //text field alas
              TextFormField(
                controller: alas,
                decoration: const InputDecoration(
                  hintText: "Alas",
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
                  if (alas.text.isNotEmpty && tinggi.text.isNotEmpty) {
                    //rumus
                    var h = (1 / 2 * double.parse(alas.text) * double.parse(tinggi.text)) * double.parse(tinggi.text);
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
                "Volume Segitiga = $hasil",
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
