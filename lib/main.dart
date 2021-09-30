import 'package:flutter/material.dart';
import 'package:itelective6/views/secondScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.greenAccent),
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => HomeScreen(),
      '/herbal-screen': (context) => SecondScreen(title: MyApp.appTitle),
    },
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/green.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Wrap(
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              Container(
                height: 550,
                width: 800,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Sign in To Account',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent[700]),
                    ),
                    Divider(
                      color: Colors.greenAccent[700],
                      indent: 350,
                      endIndent: 350,
                      height: 50,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/icons/fb.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/icons/link.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/icons/google-plus.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "or use your email account",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width * .20,
                      child: TextField(
                        cursorColor: Colors.green,
                        obscureText: false,
                        maxLines: 1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width * .20,
                      child: TextField(
                        cursorColor: Colors.green,
                        obscureText: true,
                        maxLines: 1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 270,
                      ),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[700],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: MediaQuery.of(context).size.width * .1,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/herbal-screen');
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Privacy Policy  *  Terms & Conditions",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Container(
                height: 550,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/icons/background.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 180,
                    ),
                    Text(
                      "Hello, Friend!",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      indent: 230,
                      endIndent: 230,
                      height: 50,
                    ),
                    Text(
                      "Fill up personal information and start journey with us.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: MediaQuery.of(context).size.width * .1,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
