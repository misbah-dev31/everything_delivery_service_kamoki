import 'package:every_thing_dilevery/screens/admins/admin_dashboard.dart';
import 'package:every_thing_dilevery/screens/authentication/login.dart';
import 'package:every_thing_dilevery/screens/customer/customer_dashboard.dart';
import 'package:get/get.dart';
class AppRoutes {
static const login='/login';
static const admin_dashboard='/admin_dashboard';
static const customer_dashboard='/customer_dashboard';
static final pages=[

  GetPage(name: login, page: () => LoginScreen()),

  GetPage(name: admin_dashboard, page: () => AdminDashboard()),

  GetPage(name: customer_dashboard, page: ()=>CustomerDashboard()),
  

];
}