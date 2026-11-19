import 'package:flutter/material.dart';
class AdminDashboard extends StatelessWidget{
  const AdminDashboard({super.key});
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("Admin Dashboard")
  ),
body: Container(
  child: Text("Admin Dashboard"),
),
);
  }
}