import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff303c88)),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff3f50b6)),
        child: Column(
          children: [
            SizedBox(width: double.infinity,),
            CircleAvatar(
                radius: 56,              
                backgroundImage: NetworkImage('https://mymodernmet.com/wp/wp-content/uploads/2021/01/morphy-me-celebrity-face-mashups-15.jpg'),
                
              )

          ],
        ),
      ),
    );
  }
}
