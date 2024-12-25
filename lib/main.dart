import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 183, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 213, 255),
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/6858/6858504.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Muhammad Naufal Rafasyah',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Coding & Learn a new thing!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            ContactInfo(
              icon: Icons.phone,
              text: '081284822503',
            ),
            ContactInfo(
              icon: Icons.email,
              text: 'rafasyah7114@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactInfo({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      width: 300,
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFF7ABA78),
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFF7ABA78),
            ),
          ),
        ],
      ),
    );
  }
}