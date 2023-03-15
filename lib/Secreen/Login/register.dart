
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myfb/Secreen/Login/signin.dart';
import 'package:myfb/Secreen/Tab_bar.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../provider/fbprovider.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final myprovider = Provider.of<MyProviderfb>(context, listen: false);

    print("object");
    print(myprovider.fbsusers);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: formkey,
                child: Column(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Register Your Account',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        validator: (val) {
                          if (val!.isEmpty || val.startsWith(RegExp(r'[ ]'))) {
                            return "field required";
                          } else {
                            if (val.contains(RegExp(r'[^A-Za-z0-9 ]'))) {
                              return "invalid data enter";
                            } else {
                              if (val.length < 4) {
                                return "length is short";
                              }
                            }
                          }
                          return null;
                        },
                        controller: nameController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          prefixIconColor: Colors.blue,
                          border: OutlineInputBorder(),
                          labelText: 'Full Name',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          prefixIconColor: Colors.blue,
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Required";
                          } else {
                            return null;
                          }
                        },
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
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () async {
                          if (formkey.currentState!.validate()) {
                            myprovider.adduser(
                                nameController.text,
                                emailController.text,
                                passwordController.text.toString(),
                                myprovider.fbsusers.length);

                            Fluttertoast.showToast(
                                msg: "User register",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.purple,
                                textColor: Colors.black,
                                fontSize: 16.0);
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setBool('isLoggedIn', true);
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const TabbarSecreenSecreen()));
                          }
                          print(myprovider.fbsusers);
                        },
                        style: ElevatedButton.styleFrom(
                          side:
                              const BorderSide(width: 1, color: Colors.purple),
                        ),
                        child: const Text(
                          "Register",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Already Have account..?',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextButton(
                          child: const Text(
                            'Sign In',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Userlogin()));
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
