import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreen extends StatefulWidget {
  final SharedPreferences prefs;

  const MainScreen({required this.prefs});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    bool isLoggedIn = widget.prefs.getBool('isLoggedIn') ?? false;
    setState(() {
      _isLoggedIn = isLoggedIn;
    });
  }

  Future<void> _login() async {
    await widget.prefs.setBool('isLoggedIn', true);
    setState(() {
      _isLoggedIn = true;
    });
  }

  Future<void> _logout() async {
    await widget.prefs.setBool('isLoggedIn', false);
    setState(() {
      _isLoggedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Demo'),
      ),
      body: Center(
        child: _isLoggedIn
            ? ElevatedButton(
                onPressed: _logout,
                child: Text('Logout'),
              )
            : ElevatedButton(
                onPressed: _login,
                child: Text('Login'),
              ),
      ),
    );
  }
}