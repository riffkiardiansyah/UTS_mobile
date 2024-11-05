import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts/login_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DasboardPageState();
}

class _DasboardPageState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.zero, children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(50))),
          child: Column(
            children: [
              const SizedBox(height: 50),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                title: Text('Welcome to kiki Sports',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white)),
                subtitle: Text('Happy Shopping Kak:)',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white54)),
                trailing: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/kiki.jpeg"),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ))),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ))
                },
                child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100))),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 40,
              mainAxisSpacing: 30,
              children: [
                itemDashboard('Sepak Bola', Icons.sports_soccer,
                    Colors.deepPurple),
                itemDashboard(
                    'Volly', Icons.sports_volleyball, Colors.deepPurple),
                itemDashboard('Golf', Icons.sports_golf, Colors.deepPurple),
                itemDashboard(
                    'Basket', Icons.sports_basketball, Colors.deepPurple),
                itemDashboard(
                    'Tennis', Icons.sports_tennis, Colors.deepPurple),
                itemDashboard(
                    'Baseball', Icons.sports_baseball, Colors.deepPurple),
                itemDashboard(
                    'E-sports', Icons.sports_esports, Colors.deepPurple),
                itemDashboard(
                    'Lapangan', CupertinoIcons.sportscourt, Colors.deepPurple),
              ],  
            ),
          ),
        )
      ]),
    );
  }
  

  itemDashboard(String title, IconData iconData, Color background) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: background, shape: BoxShape.circle),
              child: Icon(iconData, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      );
}