import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'RincianFakultas.dart';

class LayarKedua extends StatelessWidget {
  const LayarKedua(
      {Key? key,
      required this.pesan,
      required this.pesan1,
      required this.pesan2})
      : super(key: key);
  final String pesan;
  final String pesan1;
  final String pesan2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rincian Fakultas'),
        ),
        body: Center(
          child: new Column(
            children: [
              Image.network(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                height: 100,
              ),
              new Container(
                child: new Text(
                  '$pesan1',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
              new Container(
                child: new Text(
                  '$pesan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.normal, fontSize: 25.0),
                ),
              ),
              new Container(
                child: new Text(
                  '$pesan2',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.normal, fontSize: 15.0),
                ),
              ),
            ],
          ),
        ));
  }
}

class Fakultas extends StatelessWidget {
  const Fakultas({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(padding: EdgeInsets.all(20), shrinkWrap: true, children: [
        InkWell(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: new Column(
              children: [
                new Container(
                  child: new Text(
                    'FPMIPA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
                new Container(
                  child: new Text(
                    'Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontStyle: FontStyle.normal, fontSize: 25.0),
                  ),
                ),
                Image.network(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                  height: 100,
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const LayarKedua(
                  pesan:
                      "Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam",
                  pesan1: "FPMIPA",
                  pesan2:
                      "Terdapat 3 gedung yang berada pada lingkungan UPI dengan fasilitas yang memadai, yaitu: Gedung FPMIPA-A (JICA), Gedung FPMIPA-B, dan Gedung FPMIPA-C (Ilkom).");
            })); //gunakan navigator untuk panggil RincianFakultas
          },
        ),
        InkWell(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: new Column(
              children: [
                new Container(
                  child: new Text(
                    'FPIPS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
                new Container(
                  child: new Text(
                    'Fakultas Pendidikan Ilmu Pengetahuan Sosial',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontStyle: FontStyle.normal, fontSize: 25.0),
                  ),
                ),
                Image.network(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                  height: 100,
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const LayarKedua(
                  pesan: "Fakultas Pendidikan Ilmu Pengetahuan Sosial",
                  pesan1: "FPIPS",
                  pesan2:
                      "FPIPS UPI merupakan salah satu fakultas yang cukup aktif dan populer di antara fakultas sejenis dari universitas lain. Bahkan FPIPS UPI berperan sebagai sekretariat tetap dalam Forum Komunikasi FPIPS seluruh Indonesia, lho! Forum komunikasi ini rutin menerbitkan Jurnal Pendidikan Ilmu Ilmu Sosial secara berkala sebanyak dua kali dalam setahun.");
            })); //gunakan navigator untuk panggil RincianFakultas
          },
        ),
      ]),
    );
  }
}
