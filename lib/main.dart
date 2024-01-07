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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            CircleAvatar(
              radius: 56,
              backgroundImage: AssetImage('assets/images/foto.png'),
            ),
            Text("Wilson César Callisaya Choquecota",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Lobster", fontSize: 16)),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(color: Color(0xff8497e6)),
            ),
            SizedBox(
              child: Divider(color: Color(0xff8497e6)),
              width: 120,
            ),
            MyCard("+51 952000243", "Teléfono", Icons.phone),
            MyCard("nosliwsys@gmail.com", "Correo electrónico",
                Icons.email_outlined),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/facebook.png',
                    fit: BoxFit.cover,
                    width: 50,
                  ),
                  Image.asset(
                    'assets/images/twitter.png',
                    fit: BoxFit.cover,
                    width: 50,
                  ),
                  Image.asset(
                    'assets/images/instagram.png',
                    fit: BoxFit.cover,
                    width: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Card MyCard(title, subtitle, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        trailing: Icon(Icons.check_circle_outline_outlined),
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(icon),
      ),
    );
  }
}
