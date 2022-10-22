import 'package:flutter/material.dart';
import 'package:flutter_application_1/partes/widget.dart';
import 'dart:html' as html;

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff1A2B3C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //=======================================
            //b1
            Container(
              height: 110,
              width: largura,
              color: Color(0xff171A21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //=================================
                  //        Logo
                  Container(
                    width: (largura * 0.2),
                    alignment: Alignment.center,
                    child: Text(
                      "Sua \nLogo aqui",
                      style: TextStyle(
                          fontSize: largura > 780
                              ? 35
                              : largura > 600
                                  ? 25
                                  : largura > 500
                                      ? 20
                                      : 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  //=================================
                  //        btns
                  Container(
                    width: largura > 900 ? (largura * 0.3) : (largura * 0.7),
                    margin: EdgeInsets.only(right: 2),
                    alignment: Alignment(0, 0.3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //======================================
                        //                  btn_inicio
                        TextButton(
                            onPressed: () {},
                            child: Text("Inicio",
                                style: TextStyle(
                                    fontSize: largura > 700
                                        ? 22
                                        : largura > 500
                                            ? 18
                                            : 14,
                                    color: Colors.white))),
                        //======================================
                        //                  btn_Sobre
                        TextButton(
                            onPressed: () {},
                            child: Text("Sobre",
                                style: TextStyle(
                                    fontSize: largura > 700
                                        ? 22
                                        : largura > 500
                                            ? 18
                                            : 14,
                                    color: Colors.white))),
                        //======================================
                        //                  btn_Whatsapp
                        TextButton(
                            onPressed: () {
                              html.window.open("https://wa.me/5591984837847",
                                  'whatsapp_web');
                            },
                            child: Text("Whasapp",
                                style: TextStyle(
                                    fontSize: largura > 700
                                        ? 22
                                        : largura > 500
                                            ? 18
                                            : 14,
                                    color: Colors.white))),
                      ],
                    ),
                  ),
                  //=================================
                  //        icons || margem
                  largura > 900
                      ? Container(
                          width: (largura * 0.2),
                        )
                      : Container(),
                ],
              ),
            ),
            //=======================================
            //b2
            Container(
              height: 500,
              width: largura,
              color: Color(0xffCCD0FF),
              child: Image.asset("./images/img_post.png"),
            ),
            //=======================================
            //Posts
            Post(
              titulo: "flutter hoje",
              text_base:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in erat non orci ullamcorper vulputate vel ac lorem. Pellentesque non dui odio. Sed a erat sodales, ultrices leo quis, varius turpis. Vestibulum erat lectus, dapibus vitae eros vitae, pulvinar vulputate dui. Nulla varius vehicula metus, ut dapibus urna consequat quis. Curabitur non accumsan quam, a tincidunt nunc. Nullam commodo sollicitudin iaculis. Nunc porttitor libero egestas sagittis malesuada. Nulla sagittis vestibulum nisi, vel volutpat nulla accumsan non. Donec ultrices, sem vitae suscipit mollis, elit diam accumsan quam, sit amet gravida diam nisi at mauris. Nunc tristique urna non pellentesque volutpat. Fusce sit amet molestie ligula, at vulputate felis.",
            ),
            Post(
              titulo: "C++",
              text_base:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in erat non orci ullamcorper vulputate vel ac lorem. Pellentesque non dui odio. Sed a erat sodales, ultrices leo quis, varius turpis. Vestibulum erat lectus, dapibus vitae eros vitae, pulvinar vulputate dui. Nulla varius vehicula metus, ut dapibus urna consequat quis. Curabitur non accumsan quam, a tincidunt nunc. Nullam commodo sollicitudin iaculis. Nunc porttitor libero egestas sagittis malesuada. Nulla sagittis vestibulum nisi, vel volutpat nulla accumsan non. Donec ultrices, sem vitae suscipit mollis, elit diam accumsan quam, sit amet gravida diam nisi at mauris. Nunc tristique urna non pellentesque volutpat. Fusce sit amet molestie ligula, at vulputate felis.",
            ),
            Post(
              titulo: "dev progamação rapida",
              text_base:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in erat non orci ullamcorper vulputate vel ac lorem. Pellentesque non dui odio. Sed a erat",
            )
          ],
        ),
      ),
    );
  }
}
