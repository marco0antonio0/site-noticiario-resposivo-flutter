import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Post extends StatelessWidget {
  String titulo, text_base;
  Post({this.titulo = "", this.text_base = "", super.key});

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;
    return Container(
        width: largura,
        child: Column(children: [
          //=============================
          //    titulo
          Container(
              width: largura > 900 ? largura * .7 : largura - 50,
              margin: EdgeInsets.only(top: 30, bottom: 30),
              alignment: Alignment(-1, 0),
              child: Text(
                titulo!,
                style: TextStyle(fontSize: 50, color: Colors.white),
              )),
          //=============================
          //    Text_base
          Container(
              width: largura > 900 ? largura * .7 : largura - 50,
              alignment: Alignment(0, 0),
              child: Text(text_base!,
                  style: TextStyle(
                      fontSize: 25, color: Colors.white, height: 1.5))),
        ]));
  }
}
