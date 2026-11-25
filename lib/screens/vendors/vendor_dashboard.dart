import 'package:every_thing_dilevery/screens/admins/dashboard.dart';
import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';


class VendorDashboard extends StatelessWidget {
  const VendorDashboard({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Everything Delivery service',
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(Icons.notifications, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

               Text(
                'Good morning, Vendor',
                style: TextStyle(
                  fontSize: width < 600 ? 20: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Here's what's happening today",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 25),

              Row(
                children: [

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Today's Orders"),
                          SizedBox(height: 10),
                          Text(
                            '28',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Today's Revenue"),
                          SizedBox(height: 10),
                          Text(
                            'Rs. 34.8k',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Restaurant Status',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Open and accepting orders',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                'Quick Actions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const
                            AdminDashboard(),
                          
                          ),
                        );
                        },
                        child: Column(
                      children:  [
                        Icon(Icons.receipt_long,
                            color: Colors.orange, size: 35),
                        SizedBox(height: 8),
                        Text('Incoming Orders'),
                      ],
                    ),
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children:  [
                        Icon(Icons.restaurant_menu,
                            color: Colors.orange, size: 35),
                        SizedBox(height: 8),
                        Text('Manage Menu'),
                      ],
                    ),
                  ),
                  Expanded(
  child: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
          // after use
              const AdminDashboard(),
        ),
      );
    },
    child: Column(
      children: const [
        Icon(
          Icons.store,
          color: Colors.orange,
          size: 35,
        ),
        SizedBox(height: 8),
        Text('Restaurant Profile'),
      ],
    ),
  ),
),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                'Recent Orders',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const ListTile(
                leading: Icon(Icons.receipt, color: Colors.orange),
                title: Text('#2048'),
                subtitle: Text('Pizza Order'),
                trailing: Text('Preparing'),
              ),

              const ListTile(
                leading: Icon(Icons.receipt, color: Colors.orange),
                title: Text('#2047'),
                subtitle: Text('Burger Order'),
                trailing: Text('Pending'),
              ),

              const ListTile(
                leading: Icon(Icons.receipt, color: Colors.orange),
                title: Text('#2046'),
                subtitle: Text('Sandwich Order'),
                trailing: Text('Completed'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}