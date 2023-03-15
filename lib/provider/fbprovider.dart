import 'package:flutter/material.dart';
import 'package:myfb/model/users.dart';

class MyProviderfb extends ChangeNotifier {
  List<Usersadd> fbsusers = [
    Usersadd(name: "nsn", email: "nsn@gmail.com", password: "123456", phone: 1),
  ];

  adduser(n, em, pass, int id) {
    var users = Usersadd(name: n, email: em, password: pass, phone: id);
    print(users);
    fbsusers.add(users);
    notifyListeners();
  }
}
