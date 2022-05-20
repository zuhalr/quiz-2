import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Fasilitas extends StatelessWidget {
  const Fasilitas({Key? key}) : super(key: key);
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
              Image.network(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                height: 100,
              ),
              new Container(
                child: new Text(
                  'Gymnasium',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
            ],
          ),
        )),
        InkWell(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: new Column(
              children: [
                Image.network(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                  height: 100,
                ),
                new Container(
                  child: new Text(
                    'Kolam Renang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: new Column(
              children: [
                Image.network(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                  height: 100,
                ),
                new Container(
                  child: new Text(
                    'Lapangan Sepak Bola',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
