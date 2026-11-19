import 'package:every_thing_dilevery/screens/admins/dashboard.dart';
import 'package:every_thing_dilevery/screens/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AppRoutes {
static const login='/login';
static const dashboard='/dashboard';
static final pages=[
  GetPage(name: login, page: () => LoginScreen()),
  GetPage(name: dashboard, page: () => AdminDashboard()),

];
}