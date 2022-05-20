import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'RincianFakultas.dart';

class LayarKedua extends StatelessWidget {
  const LayarKedua({Key? key, required this.pesan}) : super(key: key);
  final String pesan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen 2'),
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
                  'Ini screen kedua, ada pesan: $pesan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.normal, fontSize: 25.0),
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
              return const LayarKedua(pesan: "haloo ini pesan dari screen 1");
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
              return const LayarKedua(pesan: "haloo ini pesan dari screen 1");
            })); //gunakan navigator untuk panggil RincianFakultas
          },
        ),
      ]),
    );
  }
}
