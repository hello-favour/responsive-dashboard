import 'package:flutter/material.dart';

import '../constants.dart';
import '../utils/my_box.dart';
import '../utils/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      backgroundColor: defaultBackground,
      drawer: drawer,
      body: Row(
        children: [
          drawer,
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const MyTile();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.pink,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
