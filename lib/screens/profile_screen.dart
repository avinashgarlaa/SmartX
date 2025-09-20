import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

// 1️⃣ Profile Page
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Profile',
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
            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.teal.shade100,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name : HG*&%R*TF"),
                    Text("Adhaar Card : XXXXXXXXXXXX"),
                    Text("Household ID : XXXXX"),
                    Text("Email : XXX@gmail.com"),
                    Text("Phone Number : XXXXXXXXXX"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Icon(Icons.check_box, color: Colors.green),
                  SizedBox(width: 8),
                  Text(
                    "Adhaar Card Verified",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: const Text(
                "Adhaar card of family members can be added for one household ID with same account",
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AddAdhaarPage()),
                  );
                },
                child: const Text("Add Adhaar Card/Adhaar Info"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Edit Profile"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Change Password"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Manage Address"),
              ),
            ),
            const SizedBox(height: 16),
            SwitchListTile(
              value: true,
              onChanged: (val) {},
              title: const Text("Notification preferences"),
            ),
            TextButton(onPressed: () {}, child: const Text("Help and Support")),
            TextButton(
              onPressed: () {},
              child: const Text("Feedback / Rate us"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 229, 88, 77),
                ),
                child: const Text(
                  "Logout",
                  style: TextStyle(color: Color.fromARGB(255, 240, 232, 232)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 2️⃣ Add Adhaar Page
class AddAdhaarPage extends StatelessWidget {
  const AddAdhaarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.teal,
        actions: const [Icon(Icons.notifications_none), SizedBox(width: 12)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name : HG*&%R*TF"),
                  Text("Adhaar Card : XXXXXXXXXXXX"),
                  Text("Household ID : XXXXX"),
                  Text("Email : XXX@gmail.com"),
                  Text("Phone Number : XXXXXXXXXX"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Icon(Icons.check_box, color: Colors.green),
                SizedBox(width: 8),
                Text(
                  "Adhaar Card Verified",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter Household ID",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AdhaarListPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: Size.fromHeight(50),
              ),
              child: const Text("Adhaar info"),
            ),
          ],
        ),
      ),
    );
  }
}

// 3️⃣ Adhaar List Page
class AdhaarListPage extends StatelessWidget {
  const AdhaarListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.teal,
        actions: const [Icon(Icons.notifications_none), SizedBox(width: 12)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.check_box, color: Colors.green),
                SizedBox(width: 8),
                Text(
                  "Adhaar Card Verified",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            for (int i = 1; i <= 4; i++)
              Card(
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: ListTile(
                  title: Text("Adhaar Card $i"),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                    child: const Text("Download (PDF)"),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
