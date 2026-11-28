import 'package:every_thing_dilevery/screens/admin/admin_dashboard.dart';
import 'package:every_thing_dilevery/screens/splash_screen.dart';
import 'package:get/get.dart';
import 'package:every_thing_dilevery/screens/authentication/login.dart';

class AppRoutes  {
    static const login='/login';
    static const admin_dashboard='/admin_dashboard';
    static const  splash_screen='/splash_screen';
    static final pages=[
        GetPage(name: login, 
        page: ()=>LoginScreen()),

GetPage(name: admin_dashboard, 
        page: ()=>AdminDashboard()),
        
        GetPage(name: splash_screen, 
        page: ()=>SplashScreen()),

    ];

}