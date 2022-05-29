import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    double customWidth = MediaQuery.of(context).size.width;
    double customHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
            child: Stack(fit: StackFit.expand, children: [
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.blue,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.grey,
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.orange,
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.blue,
                                                    width: 100,
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.pink,
                                                    width: 100,
                                                  )),
                                              Row(
                                                children: [
                                                  Container(
                                                      color: Colors.black26),
                                                ],
                                              )
                                            ],
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                    color: Colors.blueGrey),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                            color:
                                                                Colors.green)),
                                                    Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                            color:
                                                                Colors.yellow))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 1, child: Container(color: Colors.black)),
                            Expanded(
                                flex: 1,
                                child: Container(color: Colors.yellow)),
                            Expanded(
                                flex: 1, child: Container(color: Colors.white)),
                          ],
                        ))
                      ],
                    )),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.pink,
                ),
              ),
              Container(
                color: Colors.white,
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.pink,
                ),
              ),
            ],
          ),
          Positioned(
              left: customWidth / 8,
              top: customHeight / 2,
              child: Container(
                width: customWidth / 3,
                height: customHeight / 6,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
              ))
        ])),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_right),
        ));
  }
}
