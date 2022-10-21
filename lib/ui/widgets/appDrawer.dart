import 'package:alphacommunity/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class appDrawerWidget extends StatelessWidget {
  const appDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
           // ignore: prefer_const_constructors
           Container(
            color: Colors.black,
             child: const DrawerHeader(
              child: Center(child: Text('Alpha Community', style: TextStyle(color: Colors.white, fontSize: 25),)),
                       ),
           ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                ListTile(
                    title: const Text('Home'),
                    trailing: const Icon(Icons.home),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                    }),
                ListTile(
                    title: const Text('Account'),
                    trailing: const Icon(Icons.account_box_sharp),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                    }),
                const ListTile(
                  title: Text('Logout'),
                  trailing: Icon(Icons.logout),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}