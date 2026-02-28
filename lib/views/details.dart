import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:biodata/models/api.dart';
import 'package:biodata/models/msiswa.dart';
import 'package:biodata/views/edit.dart';

class Details extends StatefulWidget {
  final SiswaModel sw;

  const Details({Key? key, required this.sw}) : super(key: key);

  @override
  DetailsState createState() => DetailsState();
}

class DetailsState extends State<Details> {
  void deleteSiswa(BuildContext context) async {
    http.Response response = await http.post(
      Uri.parse(BaseUrl.hapus),
      body: {
        'id': widget.sw.id.toString(),
      },
    );
    
    final data = json.decode(response.body);
    if (data['success']) {
      pesan();
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
    }
  }

  void pesan() {
    Fluttertoast.showToast(
        msg: "Penghapusan Data Berhasil",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void confirmDelete(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: const Text('Apakah anda yakin akan menghapus data ini?'),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Icon(Icons.cancel),
              ),
              ElevatedButton(
                onPressed: () => deleteSiswa(context),
                child: const Icon(Icons.check_circle),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Siswa"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () => confirmDelete(context),
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ID : ${widget.sw.id}",
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                "NIS : ${widget.sw.nis}",
                style: const TextStyle(fontSize: 20),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Text(
                "NAMA : ${widget.sw.nama}",
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                "Tempat Lahir : ${widget.sw.tplahir}",
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                "Tanggal Lahir : ${widget.sw.tglahir}",
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                "Kelamin : ${widget.sw.kelamin}",
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                "Agama : ${widget.sw.agama}",
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                "Alamat : ${widget.sw.alamat}",
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.edit),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => Edit(sw: widget.sw),
          ),
        ),
      ),
    );
  }
}