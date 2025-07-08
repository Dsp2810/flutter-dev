// Future<void> do_task(x) async {
//   print("HELLO FROM THE DHAVAL S PATEL");
//   await Future.delayed(Duration(seconds: x), () {
//     print(
//       "DATA HAS BEEN FATCED AFTER THE TIME ${x}"
//       " times",
//     );
//   });
// }

// void main() async {
//   print("HELLO FROM THIS");
//   do_task(10);
// }

// import 'dart:convert';
// import 'dart:io';

// import 'package:vm_service/vm_service.dart';

// Stream<int> numberStream() async* {
//   for (int i = 0; i <= 5; i++) {
//     await Future.delayed(Duration(milliseconds: 1000));
//     yield i;
//   }
//   throw Exception("Ohh What Happened");
// }

// to use the await in the other style

// Future<void> main() async {
//   numberStream().listen((data) {
//     print("Data has been Received : $data");
//   }, onError: (err) {
//     print(err);
//   });

//   await for (int val in numberStream()) {
//     print("await for : $val");
//   }
// }

// void main() {
//   // final s = numberStream().asBroadcastStream();
//   Stream<int> s = numberStream();
//   s.listen((data) {
//     print(data);
//   }, onError: (erro) {
//     print(erro);
//   });
//   // s.listen((data) {
//   //   print(data);
//   // }, onError: (erro) {
//   //   print(erro);
//   // });
// }

// class invalid_age implements Exception {
//   String msg() => "Age must be above 18!";
// }

// void check_age(int age) {
//   if (age < 18) {
//     throw invalid_age();
//   } else {
//     print("Valid age: $age");
//   }
// }

// void main() {
//   try {
//     check_age(17); // You can try 19 to see the success case
//   } catch (e) {
//     if (e is invalid_age) {
//       print(e.msg()); // Custom error message
//     } else {
//       print("Unknown error occurred.");
//     }
//   }
// }

//

// class x {
//   String _name = "";
//   int? age;
//   String get y => _name;

//   // x(this._name, this.age);
//   set y(String w) {
//     _name = w;
//   }

//   x(this._name, this.age);

//   factory x.to_data(Map<String, dynamic> json) {
//     return x(json['y'], json["age"]);
//   }
//   Map<String, dynamic> tojson() => {'name': _name, 'age': age};
// }

// void main() {
//   Map<String, dynamic> user = {"y": '23CS060', "age": 19};
//   // x y = x.to_data(user);
//   x y = x("dhaval", 19);
//   var data = y.tojson();
//   print(data);
//   print("${y.y}, ${y.age}");
// }

// new start for this

// import 'dart:io';

// // abstract class category {
// //   String? cat;
// //   void set_category();
// // }

// class student {
//   String _name = "";
//   String get name => _name;
//   set name(String val) => {this._name = val};

//   getname() => {print("Student name is ${name}")};

// }

abstract class employee {
  String _name = "";
  double? salary;

  employee(this._name, this.salary);
  String get name => _name;
  set name(String val) => {if (val.isNotEmpty) _name = val};
  void showInfo() {
    print("Employee Name is $_name and Salary is Rs. ${salary} ");
  }

  void work();
}

class Developer extends employee {
  Developer(String val, double sal) : super(val, sal);

  @override
  void work() {
    print("$name write the Flutter code");
  }
}

class manager extends employee {
  manager(String name, double val) : super(name, val);
  @override
  void work() {
    print("$name manages the Team");
  }
}

void main() {
  employee dev = new Developer('dhaval', 50000);
  employee man = new manager('PAPA', 50000);

  dev.showInfo();
}
