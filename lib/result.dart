import 'package:flutter/material.dart';
import 'dart:math';

import 'about.dart';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.tinggi_badan,
        @required this.berat_badan,
        @required this.nama_user,
        @required this.jenis_kelamin,
        @required this.tanggal,
        @required this.bulan,
        @required this.tahun,
        @required this.year_now});
  final int tinggi_badan;
  final int berat_badan;
  final String nama_user;
  final String jenis_kelamin;
  final int tanggal;
  final int bulan;
  final int tahun;
  final int year_now;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    int umur = 2021 - tahun;
    String cBMI;
    String normal;
    String user = nama_user.toLowerCase();
    String jk = jenis_kelamin.toLowerCase();
    if (jenis_kelamin == "Perempuan") {
      normal = "18,0 - 25,0";
      if (bmi > 27) {
        cBMI = "Obesitas";
      } else if (bmi > 25 && bmi <= 27) {
        cBMI = "Gemuk";
      } else if (bmi >= 18 && bmi <= 25) {
        cBMI = "Normal";
      } else if (bmi < 18) {
        cBMI = "Kurus";
      } else {
        cBMI = "Tak Terdefinisi";
      }
    } else if (jenis_kelamin == "Laki-Laki") {
      normal = "17,0 - 23,0";
      if (bmi > 27) {
        cBMI = "Obesitas";
      } else if (bmi > 23 && bmi <= 27) {
        cBMI = "Gemuk";
      } else if (bmi >= 17 && bmi <= 23) {
        cBMI = "Normal";
      } else if (bmi < 17) {
        cBMI = "Kurus";
      } else {
        cBMI = "Tak Terdefinisi";
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        centerTitle: true,
        title: Text('Result'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              cBMI.toString(),
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 120,
                fontWeight: FontWeight.w800,
                color: Colors.cyan[900],
              ),
            ),
            Text(
              "Normal BMI Range",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.blueGrey,
              ),
            ),
            Text(
              normal.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.blueGrey,
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30.0, left: 50, right:50),
                child: Text(
                  ' Halo $user, Jenis Kelamin kamu $jk dan Usia kamu $umur tahun. Body Mass Index (BMI) kamu berada dalam rentangan $cBMI.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}