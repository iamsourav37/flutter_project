import 'package:flutter/material.dart';
import 'package:my_first_app/utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';
  bool securePassword = true;

  void handleLogin() {
    Navigator.of(context).pushReplacementNamed(MyRoutes.homeRoute);

    if (username == 'iamsourav37' && password == '1234') {
      // Navigator.of(context).pushNamed(MyRoutes.homeRoute);
      Navigator.of(context).pushReplacementNamed(MyRoutes.homeRoute);
    } else {
      print("invalid credintials");
    }
  }

  void showPassword() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // physics: BouncingScrollPhysics(),
        child: Material(
          color: Colors.white,
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(
                    image: AssetImage(
                      "assets/images/loign_2.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Welcome $username",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Username',
                        ),
                        onChanged: (value) {
                          setState(() {
                            this.username = value;
                          });
                        },
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 5,
                      ),
                      child: TextFormField(
                        obscureText: securePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              this.showPassword();
                            },
                            icon: Icon(
                              securePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          hintText: 'Password',
                        ),
                        onChanged: (value) {
                          this.password = value;
                        },
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 110),
                      child: ElevatedButton(
                        onPressed: () {
                          this.handleLogin();
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(
                            fontSize: 20,
                          ),
                          elevation: 5,
                          primary: Colors.purple,
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 44),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
