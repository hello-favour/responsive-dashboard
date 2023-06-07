import 'package:flutter/material.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[300],
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("D A S H B O A R D"),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text("M E S S A G E"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("L O G O U T"),
            ),
          ],
        ),
      ),
    );
  }
}
