import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              margin: EdgeInsets.only(left: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/profile.jpg'),
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Hi, Ishini!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 40,
            ),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry>[
                PopupMenuItem(
                  child: Text('Manage Categories'),
                ),
                PopupMenuItem(
                  child: Text('Sync Data'),
                ),
                 PopupMenuItem(
                  child: Text('Help'),
                ),
                 PopupMenuItem(
                  child: Text('FAQ'),
                ),
                // Add more items as needed
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
