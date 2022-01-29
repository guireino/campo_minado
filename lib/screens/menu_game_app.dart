import 'package:flutter/material.dart';

import 'package:campo_minado/models/tabuleiro.dart';
import 'campo_minado_app.dart';

import '../utils/app_routes.dart';

class menuGameApp extends StatefulWidget {
  const menuGameApp({Key key}) : super(key: key);

  @override
  State<menuGameApp> createState() => _menuGameAppState();
}

class _menuGameAppState extends State<menuGameApp> {
  void modeHard() {
    setState(() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => CampoMinadoApp(100)));
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20), primary: Colors.black);

    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[600]),
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Game Campo Minado"),
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: Stack(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.yellow,
                              child: IconButton(
                                iconSize: 40.0,
                                padding: EdgeInsets.all(0),
                                icon: Icon(
                                  Icons.sentiment_very_satisfied_outlined,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // modo Easy
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 20.0,
                              width: 180.0,
                              child: Text(
                                "Modo Easy = 30 bombas",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: style,
                            child: Text("Easy"),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CampoMinadoApp(30)));
                            }),
                      ],
                    ),
                  ),
                ),
                Container(
                  // modo normal
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 20.0,
                              width: 180.0,
                              child: Text(
                                "Modo normal = 50 bombas",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: style,
                            child: Text("Normal"),
                            onPressed: () {
                              Navigator.pushNamed(context, "/campo_minado");
                            }),
                      ],
                    ),
                  ),
                ),
                Container(
                  // modo Hard
                  child: Padding(
                    padding: const EdgeInsets.only(top: 300),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 20.0,
                              width: 180.0,
                              child: Text(
                                "Modo Hard = 100 bombas",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: style,
                            child: Text("Hard"),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CampoMinadoApp(100)));
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.GAME: (ctx) => CampoMinadoApp(50),
      },
    );
  }
}
