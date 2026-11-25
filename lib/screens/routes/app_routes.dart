import 'package:every_thing_dilevery/screens/admins/dashboard.dart';
import 'package:every_thing_dilevery/screens/authentication/login.dart';
import 'package:every_thing_dilevery/screens/vendors/vendor_dashboard.dart';

import 'package:get/get.dart';
class AppRoutes {
static const login='/login';
static const dashboard='/dashboard';
static const  vendor_dashboard='/vendordashbord';
static final pages=[
  GetPage(name: login, page: () => LoginScreen()),
  GetPage(name: dashboard, page: () => AdminDashboard()),
 GetPage(name: vendor_dashboard, page: () => VendorDashboard()),


];
}