import 'package:every_thing_dilevery/screens/authentication/login.dart';
import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';
import 'package:every_thing_dilevery/routes/app_routes.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return GetMaterialApp(
    localizationsDelegates: GlobalMaterialLocalizations.delegates,
    debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.splash_screen,
    getPages: AppRoutes.pages,
  );
  }
}