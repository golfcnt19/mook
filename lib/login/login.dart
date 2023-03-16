import 'package:flutter/material.dart';
import 'package:my_project_naja/home/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final _username = TextEditingController();
    final _password = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.yellow.shade50,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 200,
                    child: Image.asset(
                      "assets/images/logo.png",
                    ),
                  ),
                  Text(
                    "Log in",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.amber.shade200,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      elevation: 16,
                      // the size of the shadow
                      shadowColor: Colors.black,
                      // shadow color
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        //set border radius more than 50% of height and width to make circle
                      ),
                      //color: Colors.white,
                      child: SizedBox(
                        height: 180,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 20, right: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.people,
                                  size: 24,
                                  color: Colors.blueGrey,
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Container(
                                    width: 100,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.grey.shade200,
                                    ),
                                    padding: EdgeInsets.all(7),
                                    child: TextField(
                                      decoration: const InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                      hintText: "username",
                                      hintStyle: TextStyle(
                                        color: Colors.grey
                                      )),
                                      controller: _username,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.lock,
                                  size: 24,
                                  color: Colors.blueGrey,
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Container(
                                    width: 100,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.grey.shade200,
                                    ),
                                    padding: EdgeInsets.all(7),
                                    child: TextField(
                                      decoration: const InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                          hintText: "password",
                                          hintStyle: TextStyle(
                                              color: Colors.grey
                                          )),
                                      controller: _password,
                                      obscureText: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber.shade300,
                        padding:
                        const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                        textStyle:
                        const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
