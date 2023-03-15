import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myfb/Secreen/Login/register.dart';
import 'package:myfb/Secreen/Tab_bar.dart';
import 'package:myfb/provider/fbprovider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Userlogin extends StatefulWidget {
  Userlogin({Key? key}) : super(key: key);

  @override
  State<Userlogin> createState() => _UserloginState();
}

class _UserloginState extends State<Userlogin> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final myprovider = Provider.of<MyProviderfb>(context, listen: false);
    var x;
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formkey,
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign In To continue',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Feild is empty";
                      } else if (val.length < 6) {
                        return "Enter more than 6 digit";
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Colors.blue,
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Colors.blue,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    validator: (val) {
                      if (val!.length < 6) {
                        return "Enter more then 6 number";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(width: 1, color: Colors.purple),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 30),
                      ),
                      onPressed: () async {
                        if (formkey.currentState!.validate()) {
                          final item = myprovider.fbsusers.firstWhere((e) =>
                              e.email == emailController.text.toString() &&
                              e.password == passwordController.text.toString());

                          x = item.email;

                          // x = emailController.text;
                          // Store the authentication status
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          prefs.setBool('isLoggedIn', true);

                          print("check consumer");

                          print(emailController.text);

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TabbarSecreenSecreen()),
                          );

                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => TabbarSecreenSecreen()));

                          Fluttertoast.showToast(
                              msg: "User login",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.purple,
                              textColor: Colors.black,
                              fontSize: 16.0);
                        } else {
                          myprovider.fbsusers.firstWhere((e) =>
                              e.email != emailController.text.toString() ||
                              e.password != passwordController.text.toString());

                          Fluttertoast.showToast(
                              msg: "Enter Correct username password",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.black,
                              fontSize: 16.0);
                        }
                        {
                          // Fluttertoast.showToast(
                          //     msg: "Enter Correct",
                          //     toastLength: Toast.LENGTH_SHORT,
                          //     gravity: ToastGravity.CENTER,
                          //     timeInSecForIosWeb: 1,
                          //     backgroundColor: Colors.red,
                          //     textColor: Colors.black,
                          //     fontSize: 16.0);
                        }

                        //endif
                      },
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Does not have account?'),
                    TextButton(
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
