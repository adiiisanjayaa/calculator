import 'package:flutter/material.dart';

// kelas halaman segitiga
class PersegiPage extends StatefulWidget {
  const PersegiPage({Key? key}) : super(key: key);

  @override
  PersegiPageState createState() => PersegiPageState();
}

class PersegiPageState extends State<PersegiPage> {
  // controller untuk menangkap nilai yang diinputkan
  TextEditingController panjang = TextEditingController();
  TextEditingController lebar = TextEditingController();
  TextEditingController tinggi = TextEditingController();
  // variable hasil untuk menampilkan hasil pergitungan
  String hasil = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hitung Volume Persegi"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //text field alas
              TextFormField(
                controller: panjang,
                decoration: const InputDecoration(
                  hintText: "Panjang",
                ),
              ),
              const SizedBox(height: 10),
              //text field tinggi
              TextFormField(
                controller: lebar,
                decoration: const InputDecoration(
                  hintText: "Lebar",
                ),
              ),
              const SizedBox(height: 10),
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
                  if (panjang.text.isNotEmpty &&
                      lebar.text.isNotEmpty &&
                      tinggi.text.isNotEmpty) {
                    //rumus
                    var h = double.parse(panjang.text) *
                        double.parse(lebar.text) *
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
                "Volume Persegi = $hasil",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.red, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
