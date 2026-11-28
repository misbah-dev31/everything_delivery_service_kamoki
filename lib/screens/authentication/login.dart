import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';


// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  TextEditingController emailController =
    TextEditingController();
    TextEditingController passwordController =
    TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // 1. HEADER

                Row(
                  children: [

                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                    color: const Color(0xFFF5822A),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),

                    const SizedBox(width: 12),

                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Everything',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'DELIVERY SERVICES',
                          style: TextStyle(
                            fontSize: 9,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    Text(
                      'CUSTOMER',
                      style: TextStyle(
                        color: Colors.orange.shade300.withOpacity(0.4),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 75),

                // 2. WELCOME SECTION

                const Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: 38,
                    // fontWeight: FontWeight.w400,
                    color: Colors.black87,
                       fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Sign in to continue ordering',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 38),

                // 3. EMAIL FIELD

                const Text(
                  'Email address',
                  style: TextStyle(
                    fontSize: 14,
                    // fontWeight: FontWeight.w600,
                       fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'you@example.com',
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // 4. PASSWORD FIELD

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                                           
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: const Color(0xFFF5822A),
                             
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),

                TextField(
                         controller: passwordController,
                 obscureText: true,
             
                  decoration: InputDecoration(
                   
             
                    hintText: 'Enter your password',
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.grey,
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                    
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // 5. SIGN IN BUTTON

                SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton(
    onPressed: () {
      final adminEmail = emailController.text;
      final customerEmail = emailController.text;
      final vendorEmail = emailController.text;
      final riderEmail = emailController.text;
      final password = passwordController.text;

      if (adminEmail == "admin@gmail.com" &&
          password == "123456") {
        Get.snackbar(
          "Success",
          "Login Successful",
        );
        Get.toNamed('./admin_dashboard');
      } else if (customerEmail == "customer@gmail.com" &&
          password == "123456") {
        Get.snackbar(
          "Success",
          "Login Successful",
        );
        Get.toNamed('/customer_dashboard');
      } else if (riderEmail == "rider@gmail.com" &&
          password == "123456") {
        Get.snackbar(
          "Success",
          "Login Successful",
        );
        Get.toNamed('./rider_dashboard');
      } else if (vendorEmail == "vendor@gmail.com" &&
          password == "123456") {
        Get.snackbar(
          "Success",
          "Login Successful",
        );
        Get.toNamed('./vendor_dashboard');
      } else {
        Get.snackbar(
          "Error",
          "Invalid Email or Password",
        );
      }
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFF5822A),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
    ),
    child: const Text(
      'Sign in',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  ),
),
                const SizedBox(height: 28),

                // 6. CREATE ACCOUNT

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Create account',
                        style: TextStyle(
                          color: const Color(0xFFF5822A),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                // 7. TERMS AND PRIVACY

                const Center(
                  child: Text(
                    'By continuing, you agree to our',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Terms of Service',
                      style: TextStyle(
                        color: Color(0xFFF5822A),
                        fontSize: 11,
                      ),
                    ),
                    const Text(
                      '  &  ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                    const Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Color(0xFFF5822A),
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
   
  }
}