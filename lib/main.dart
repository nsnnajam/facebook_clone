import 'package:flutter/material.dart';
import 'package:myfb/Secreen/Login/signin.dart';
import 'package:myfb/Secreen/Tab_bar.dart';
import 'package:myfb/provider/fbprovider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(ChangeNotifierProvider(
    create: (context) => MyProviderfb(),
    child: MyApp(isLoggedIn: isLoggedIn),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.isLoggedIn}) : super(key: key);

  final bool isLoggedIn;
  // MyApp({required this.isLoggedIn});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,

        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.normal),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
        // This is the theme of y
        //our application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.black,

        primarySwatch: Colors.blue,
      ),
      home: isLoggedIn ? TabbarSecreenSecreen() : Userlogin(),
    );
  }
}
