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
          children:[
            Container(
              height: 45,
              width: 45,
              margin: EdgeInsets.only(left: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/profie.jpg'),
                ),
            ),
            SizedBox(width: 10),
            const Text(
              'Hi, Ishini!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold),

            ),
          ],
      ),
      actions: const [
        Icon(Icons.more_vert,
        color: Colors.black,
        size:40,)
      ],
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
      );
  }
}
