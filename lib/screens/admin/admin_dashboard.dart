import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const MyApp());
}

const Color orange = Color(0xFFFF7A00);
const Color dark = Color(0xFF111111);
const Color bg = Color(0xFFFFFAF5);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AdminDashboard(),
    );
  }
}

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  bool isWeek = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Welcome back, Amina',
                          style: TextStyle(fontSize: 12)),
                      SizedBox(height: 4),
                      Text('Mission control.',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: dark,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text('AK',
                          style: TextStyle(
                              color: orange, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.circle, color: Colors.green, size: 8),
                      SizedBox(width: 6),
                      Text('Platform healthy', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Text('Nov 25, 2026',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 16),

              // Revenue card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Platform revenue',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        Icon(Icons.bar_chart),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('\$482,640',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: dark,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text('+16.8%',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ),
                        const SizedBox(width: 8),
                        const Text('vs. previous month',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Toggle
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: dark,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          toggleButton('This week', isWeek, () {
                            setState(() => isWeek = true);
                          }),
                          toggleButton('This month', !isWeek, () {
                            setState(() => isWeek = false);
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Stat cards
              Row(
                children: [
                  statCard(Icons.receipt_long, '84.2k', 'Total orders',
                      '+12.8%', true),
                  const SizedBox(width: 12),
                  statCard(Icons.people_outline, '28.4k', 'Customers',
                      '+9.2%', false),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  statCard(Icons.store_outlined, '1,248', 'Vendors', '+4.6%',
                      false),
                  const SizedBox(width: 12),
                  statCard(Icons.pedal_bike, '3,892', 'Riders', '+7.1%',
                      false),
                ],
              ),
              const SizedBox(height: 16),

              // Order activity
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Order activity',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('30 days',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: CustomPaint(painter: LineChartPainter()),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('01', style: TextStyle(fontSize: 10)),
                        Text('05', style: TextStyle(fontSize: 10)),
                        Text('10', style: TextStyle(fontSize: 10)),
                        Text('15', style: TextStyle(fontSize: 10)),
                        Text('20', style: TextStyle(fontSize: 10)),
                        Text('25', style: TextStyle(fontSize: 10)),
                        Text('30', style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Quick actions
              const Text('Quick actions',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 12),
              Row(
                children: [
                  actionButton('Vendors'),
                  const SizedBox(width: 12),
                  actionButton('Riders'),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  actionButton('Customers'),
                  const SizedBox(width: 12),
                  actionButton('Orders'),
                ],
              ),
            ],
          ),
        ),
      ),

      // Bottom navigation
      bottomNavigationBar: Container(
        color: dark,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() => currentIndex = i),
          backgroundColor: dark,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: orange,
          unselectedItemColor: Colors.white70,
          selectedFontSize: 11,
          unselectedFontSize: 11,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Overview'),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long), label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline), label: 'People'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'Settings'),
          ],
        ),
      ),
    );
  }

  Widget toggleButton(String text, bool selected, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: selected ? Colors.white : dark,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: selected ? dark : Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget statCard(
      IconData icon, String value, String label, String percent, bool isDark) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: isDark ? dark : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, size: 20, color: isDark ? Colors.white : dark),
                Text(percent,
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: isDark ? orange : Colors.green)),
              ],
            ),
            const SizedBox(height: 16),
            Text(value,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : dark)),
            const SizedBox(height: 4),
            Text(label,
                style: TextStyle(
                    fontSize: 12,
                    color: isDark ? Colors.white : Colors.black87)),
          ],
        ),
      ),
    );
  }

  Widget actionButton(String text) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
                style: const TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w600)),
            const Icon(Icons.chevron_right, size: 18),
          ],
        ),
      ),
    );
  }
}

// Simple line chart
class LineChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final points = [0.15, 0.25, 0.18, 0.5, 0.42, 0.7, 0.6, 0.9];
    final path = Path();
    final fill = Path();

    for (int i = 0; i < points.length; i++) {
      final x = size.width * i / (points.length - 1);
      final y = size.height * (1 - points[i]);
      if (i == 0) {
        path.moveTo(x, y);
        fill.moveTo(x, size.height);
        fill.lineTo(x, y);
      } else {
        path.lineTo(x, y);
        fill.lineTo(x, y);
      }
    }
    fill.lineTo(size.width, size.height);
    fill.close();

    canvas.drawPath(
        fill, Paint()..color = orange.withOpacity(0.15));
    canvas.drawPath(
      path,
      Paint()
        ..color = const Color(0xFFB45309)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}