import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Herbal Medicine';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SecondScreen(title: appTitle),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/wp.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Featured Medicine",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  fontFamily: 'Merriweather',
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100, right: 100),
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/icons/echinacea.jpg"),
                          Container(
                            padding: EdgeInsets.all(30.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Echinacea\n".toUpperCase(),
                                        style:
                                            Theme.of(context).textTheme.button,
                                      ),
                                      TextSpan(
                                          text:
                                              "Usually taken as a tea or supplement.")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100, right: 100),
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/icons/biloba.jpg"),
                          Container(
                            padding: EdgeInsets.all(30.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Ginkgo biloba\n".toUpperCase(),
                                        style:
                                            Theme.of(context).textTheme.button,
                                      ),
                                      TextSpan(
                                          text:
                                              "Said to treat a wide range of ailments.")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100, right: 100),
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/icons/wort.jpg"),
                          Container(
                            padding: EdgeInsets.all(30.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "St. John’s wort\n".toUpperCase(),
                                        style:
                                            Theme.of(context).textTheme.button,
                                      ),
                                      TextSpan(
                                          text:
                                              "Used aid wound healing and alleviate insomnia")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/icons/valerian.jpg"),
                          Container(
                            padding: EdgeInsets.all(30.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Valerian\n".toUpperCase(),
                                        style:
                                            Theme.of(context).textTheme.button,
                                      ),
                                      TextSpan(
                                          text:
                                              "It was taken to relieve reslestness, and headaches.")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.greenAccent[700],
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Image.asset(
                        "assets/icons/me.jpg",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Text(
                      'Lloyd Supera',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    Text(
                      'thegreatpawpaw@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
