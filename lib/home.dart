import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'result.dart';
import 'about.dart';
import 'package:intl/intl.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  int tanggal;
  int bulan;
  int tahun;
  String nama;
  String _valGender;
  List _listGender = ["Laki-Laki", "Perempuan"];
  int year = 0;
  getDateToday() {
    var now = new DateTime.now();
    var format = new DateFormat('yyyy');
    String dateFormat = format.format(now);
    var parse = int.parse(dateFormat);
    setState(() {
      year = parse;
    });
  }

  @override
  Widget build(BuildContext context) {
    getDateToday();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
        ),
        title: Text('BMI Calculator'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutRoute()),
              );
            },
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/bmi.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    Text(''),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.cyan[900],
                                primaryColorDark: Colors.cyan[900]),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  nama = txt;
                                });
                              },
                              keyboardType: TextInputType.text,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                      new BorderSide(color: Colors.cyan[900]),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      )
                                  ),
                                  hintText: 'Masukkan Nama Anda',
                                  labelText: 'Nama',
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blueGrey,
                                  ),
                                  prefixText: ' ',
                                  suffixStyle:
                                  const TextStyle(color: Colors.cyan)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                    Text(''),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.cyan[900],
                                primaryColorDark: Colors.cyan[900]),
                            child: new DropdownButtonFormField(
                              items: _listGender.map((value) {
                                return DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _valGender = value;
                                });
                              },
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide:
                                    new BorderSide(color: Colors.cyan[900]),
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(30.0),
                                    ),
                                  ),
                                  hintText: 'Pilih Jenis Kelamin',
                                  helperText: '',
                                  labelText: 'Jenis Kelamin',
                                  prefixIcon: const Icon(
                                    Icons.wc_sharp,
                                    color: Colors.blueGrey,
                                  ),
                                  suffixStyle:
                                  const TextStyle(color: Colors.blueGrey)),
                            ),
                          ),
                        ),
                      ],
                    ),


                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.cyan[900],
                                primaryColorDark: Colors.cyan[900]),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tanggal = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide:
                                    new BorderSide(color: Colors.cyan[900]),
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(30.0),
                                    ),
                                  ),
                                  hintText: '01-31',
                                  labelText: 'Tanggal',
                                  prefixIcon: const Icon(
                                    Icons.date_range_outlined,
                                    color: Colors.blueGrey,
                                  ),
                                  suffixStyle:
                                  const TextStyle(color: Colors.blueGrey)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.cyan[900],
                                primaryColorDark: Colors.cyan[900]),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  bulan = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderSide:
                                  new BorderSide(color: Colors.cyan[900]),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(30.0),
                                  ),
                                ),
                                hintText: '01-12',
                                labelText: 'Bulan',
                                prefixIcon: const Icon(
                                  Icons.date_range_outlined,
                                  color: Colors.blueGrey,
                                ),
                                suffixStyle:
                                const TextStyle(color: Colors.blueGrey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.cyan[900],
                                primaryColorDark: Colors.cyan[900]),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tahun = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide:
                                    new BorderSide(color: Colors.cyan[900]),
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(30.0),
                                    ),
                                  ),
                                  hintText: '',
                                  labelText: 'Tahun',
                                  prefixIcon: const
                                  Icon(
                                    Icons.date_range_outlined,
                                    color: Colors.blueGrey,
                                  ),
                                  suffixStyle:
                                  const TextStyle(color: Colors.blueGrey)),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Text(''),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.cyan[900],
                                primaryColorDark: Colors.cyan[900]),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  berat = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide:
                                    new BorderSide(color: Colors.cyan[900]),
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(30.0),
                                    ),
                                  ),
                                  hintText: 'Berat Badan',
                                  labelText: 'Berat badan',
                                  prefixIcon: const Icon(
                                    Icons.accessibility,
                                    color: Colors.blueGrey,
                                  ),
                                  prefixText: ' ',
                                  suffixText: 'kg',
                                  suffixStyle:
                                  const TextStyle(color: Colors.blueGrey)),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 15,
                        ),

                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.cyan[900],
                                primaryColorDark: Colors.cyan[900]),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tinggi = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide:
                                    new BorderSide(color: Colors.cyan[900]),
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(30.0),
                                    ),
                                  ),
                                  hintText: 'Tinggi Badan',
                                  labelText: 'Tinggi Badan',
                                  prefixIcon: const Icon(
                                    Icons.accessibility,
                                    color: Colors.blueGrey,
                                  ),
                                  prefixText: ' ',
                                  suffixText: 'cm',
                                  suffixStyle:
                                  const TextStyle(color: Colors.blueGrey)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),

            Text(''),
            Text(''),
            Text(''),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 120, right: 120),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.cyan[900])
                ),
                color: Colors.cyan[900],
                textColor: Colors.blueGrey,
                padding: EdgeInsets.all(12.0),
                onPressed: () {
                  if (_valGender != '' &&
                      nama != null &&
                      tahun != null &&
                      bulan != null &&
                      tanggal != null &&
                      tinggi != null &&
                      berat != null) {
                    if ((tanggal > 0 && tanggal <= 31) &&
                        (bulan > 0 && bulan <= 12) &&
                        (tahun > 1900 && tahun < 2020)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMIResult(
                                tinggi_badan: tinggi,
                                berat_badan: berat,
                                nama_user: nama,
                                jenis_kelamin: _valGender,
                                tanggal: tanggal,
                                bulan: bulan,
                                tahun: tahun,
                                year_now: year)),
                      );
                    } else {
                      return ErrorDescription("Tanggal/Bulan/Tahun tidak valid!");
                    }
                  } else {
                    return ErrorDescription("Data Belum Lengkap!");
                  }
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 25,
          color: Colors.cyan[900],
          alignment: Alignment.center,
          child: Text(
            'Developed with <3 by @ngurahsunitra.',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),
    );

  }
}