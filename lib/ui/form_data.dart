import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            _inputContainer(_textboxNama()),
            const SizedBox(height: 16),
            _inputContainer(_textboxNIM()),
            const SizedBox(height: 16),
            _inputContainer(_textboxTahun()),
            const SizedBox(height: 16),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _inputContainer(Widget child){
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: child,
      padding: EdgeInsets.only(left: 20),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Nama",
        border: InputBorder.none,
      ),
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "NIM",
        border: InputBorder.none,
      ),
      controller: _nimController,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Tahun Lahir",
        border: InputBorder.none,
      ),
      controller: _tahunController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String nama = _namaController.text;
          String nim = _nimController.text;
          int tahun = int.parse(_tahunController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TampilData(nama: nama, nim: nim, tahun: tahun)));
        },
        child: const Text('Simpan'));
  }
}
