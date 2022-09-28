import 'package:ass07/screens/storeP1.dart';
import 'package:flutter/material.dart';

class log_in extends StatefulWidget {
  const log_in({super.key});

  @override
  State<log_in> createState() => _log_inState();
}

class _log_inState extends State<log_in> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/loginImage.jpg"), fit: BoxFit.cover),
        ),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "Log In",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  label: Text("Enter your email"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  hintText: "eg: example@gmail.com"),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  label: Text("Enter your Password"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  hintText: "at least 8 charecters"),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: ElevatedButton.icon(
                onPressed: (() {
                  setState(() {
                    if (emailController.text == "abc" &&
                        passwordController.text == "123") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return store_p1();
                          },
                        ),
                      );
                    } else {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              backgroundColor:
                                  Color.fromARGB(255, 187, 131, 149),
                              actions: [
                                Container(
                                  color: Color.fromARGB(255, 187, 131, 149),
                                  alignment: Alignment.center,
                                  child: Text("Password or Email is wrong !"),
                                )
                              ],
                            );
                          }));
                    }
                  });
                }),
                icon: Icon(Icons.login),
                label: Text("Log In"),
                style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    primary: Color.fromARGB(255, 203, 68, 113)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
