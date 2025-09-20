import 'package:flutter/material.dart';

class WasteHistoryScreen extends StatelessWidget {
  const WasteHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    'Waste History',
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
            const SizedBox(height: 16),
            _buildTabBar(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: _buildWasteCard(
                'Organic',
                '12.54kg',
                '125 points',
                Icons.eco,
                Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: _buildWasteCard(
                'Inorganic',
                '7kg',
                '201 points',
                Icons.recycling,
                Colors.lightBlue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: _buildWasteCard(
                'Electronics',
                '3kg',
                '50 points',
                Icons.smartphone,
                Colors.black87,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: _buildWasteCard(
                'Metal',
                '13kg',
                '112 points',
                Icons.category,
                Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: _buildWasteCard(
                'Miscellaneous',
                '19.73kg',
                '195 points',
                Icons.inventory,
                Colors.orange,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: _buildPieChartSection(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Detailed logs',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(padding: const EdgeInsets.all(10.0), child: _buildLogBox()),
            const SizedBox(height: 20),
            _buildDownloadButton(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        _TabItem(icon: Icons.calendar_today, label: 'Weekly', isSelected: true),
        _TabItem(icon: null, label: 'Monthly'),
        _TabItem(icon: null, label: 'Custom'),
      ],
    );
  }

  Widget _buildWasteCard(
    String title,
    String weight,
    String points,
    IconData icon,
    Color color,
  ) {
    return Card(
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.1),
          child: Icon(icon, color: color),
        ),
        title: Text(
          '$title : $weight',
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(points),
      ),
    );
  }

  Widget _buildPieChartSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          ),
          child: const Text('Pie Chart', style: TextStyle(color: Colors.white)),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: Image(
                  image: AssetImage("assets/pie.png"),
                ), // Use a pie chart widget here
              ),
            ),
            const SizedBox(width: 10),
            Column(
              children: [
                _buildColorLegend(Colors.green),
                _buildColorLegend(Colors.blue),
                _buildColorLegend(Colors.orange),
                _buildColorLegend(Colors.grey),
                _buildColorLegend(Colors.black12),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildColorLegend(Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      width: 100,
      height: 12,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildLogBox() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.black12),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Date and Time : 12 sept, 8:30 AM'),
          SizedBox(height: 4),
          Text(
            'Breakdown : Organic 2kg + Inorganic 0.5kg + Miscellaneous 0.1kg',
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Text('Status : '),
              Icon(Icons.check_box, color: Colors.green, size: 18),
              SizedBox(width: 4),
              Text('Collected'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadButton() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // TODO: Implement PDF download
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.green),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        ),
        child: const Text(
          'Download Report (PDF)',
          style: TextStyle(color: Colors.green),
        ),
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final IconData? icon;
  final String label;
  final bool isSelected;

  const _TabItem({this.icon, required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (icon != null)
          Icon(icon, color: isSelected ? Colors.green : Colors.grey),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.green : Colors.black,
          ),
        ),
      ],
    );
  }
}
