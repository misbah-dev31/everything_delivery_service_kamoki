import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';
import 'package:every_thing_dilevery/routes/app_routes.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 5),
      () => Get.offNamed(AppRoutes.login),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF8300),
      body: Stack(
        children: [

          // Top Right Circle
          Positioned(
            top: -120,
            right: -80,
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.orange.shade300.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Logo
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      "ET",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Everything",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const Text(
                  "DELIVERY SERVICES",
                  style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Delivering Everything, Everywhere",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Column(
              children: const [
                CircularProgressIndicator(
                  color: Colors.white,
                ),
                SizedBox(height: 20),
                Text(
                  "LOADING...",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}