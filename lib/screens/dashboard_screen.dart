import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  Widget buildWasteCard({
    required IconData icon,
    required String label,
    required String weight,
    required String points,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 140,
      height: 110,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(2, 2)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: color),
          const SizedBox(height: 8),
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(weight),
          const SizedBox(height: 2),
          Text(points, style: TextStyle(color: Colors.green)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 55,
              bottom: 10,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF00A676),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.notifications_none, color: Colors.white),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Welcome Back! You have successfully\nsegregated waste 32 times so far..',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),

          // Cards Grid
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                buildWasteCard(
                  icon: Icons.eco,
                  label: 'Organic',
                  weight: '12.54 kg',
                  points: '125 points',
                  color: Colors.green,
                ),
                buildWasteCard(
                  icon: Icons.recycling,
                  label: 'Inorganic',
                  weight: '7 kg',
                  points: '201 points',
                  color: Colors.blue,
                ),
                buildWasteCard(
                  icon: Icons.smartphone,
                  label: 'Electronics',
                  weight: '3kg',
                  points: '50 points',
                  color: Colors.teal,
                ),
                buildWasteCard(
                  icon: Icons.fitness_center,
                  label: 'Metal',
                  weight: '13 kg',
                  points: '112 points',
                  color: Colors.grey,
                ),
                buildWasteCard(
                  icon: Icons.wb_sunny,
                  label: 'Miscellaneous',
                  weight: '19.73 kg',
                  points: '195 points',
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
