import 'package:every_thing_dilevery/screens/authentication/login.dart';
import 'package:every_thing_dilevery/screens/routes/app_routes.dart';
import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';

void main(){
    runApp(MyApp());
}
class MyApp extends StatelessWidget{
    const MyApp({super.key});
    @override
  Widget build(BuildContext context) {
  return GetMaterialApp(
    debugShowCheckedModeBanner:false,
    initialRoute: AppRoutes.login,
    getPages: AppRoutes.pages,
  );
  }
}