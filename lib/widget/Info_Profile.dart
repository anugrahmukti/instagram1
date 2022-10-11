import 'package:flutter/material.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile(this.nama, this.jumlah);
  final String nama;
  final String jumlah;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          nama,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Text(
          jumlah,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
