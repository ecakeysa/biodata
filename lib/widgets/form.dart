import 'package:flutter/material.dart';

class AppForm extends StatefulWidget {
  final GlobalKey<FormState> formkey;
  final TextEditingController nisController,
      namaController,
      tpController,
      tgController,
      kelaminController,
      agamaController,
      alamatController;

  const AppForm({
    Key? key,
    required this.formkey,
    required this.nisController,
    required this.namaController,
    required this.tpController,
    required this.tgController,
    required this.kelaminController,
    required this.agamaController,
    required this.alamatController,
  }) : super(key: key);

  @override
  AppFormState createState() => AppFormState();
}

class AppFormState extends State<AppForm> {
  // Method untuk input NIS
  txtNis() {
    return TextFormField(
      controller: widget.nisController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "NIS",
        prefixIcon: const Icon(Icons.card_membership),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Masukkan NIS Kelahiran Anda.';
        }
        return null;
      },
    );
  }

  // Method untuk input Nama
  txtNama() {
    return TextFormField(
      controller: widget.namaController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "NAMA",
        prefixIcon: const Icon(Icons.note),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Masukkan Nama Anda.';
        }
        return null;
      },
    );
  }

  // Method untuk input Tempat Lahir
  txtTempat() {
    return TextFormField(
      controller: widget.tpController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "Tempat Lahir",
        prefixIcon: const Icon(Icons.location_city),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Masukkan Kota Kelahiran Anda.';
        }
        return null;
      },
    );
  }

  // Method tambahan untuk field lainnya agar tidak error
  txtGeneric(TextEditingController controller, String label, IconData icon) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            txtNis(),
            const SizedBox(height: 15),
            txtNama(),
            const SizedBox(height: 15),
            txtTempat(),
            const SizedBox(height: 15),
            // Menambahkan field sisa agar form lengkap sesuai controller di create.dart
            txtGeneric(widget.tgController, "Tanggal Lahir", Icons.calendar_today),
            const SizedBox(height: 15),
            txtGeneric(widget.kelaminController, "Jenis Kelamin", Icons.transgender),
            const SizedBox(height: 15),
            txtGeneric(widget.agamaController, "Agama", Icons.auto_stories),
            const SizedBox(height: 15),
            txtGeneric(widget.alamatController, "Alamat", Icons.home),
          ],
        ),
      ),
    );
  }
}