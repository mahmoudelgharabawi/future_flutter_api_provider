import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/employee.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/services/employee_service.dart';
import 'package:provider/provider.dart';

import 'models/employee.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final EmployeeService employeeService = EmployeeService();
  @override
  Widget build(BuildContext context) {
    return FutureProvider<List<Employee>>(
      create: (context) => employeeService.fetchemployees(),
      initialData: [],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}
