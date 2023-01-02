import 'package:flutter/material.dart';
import 'package:soloq/screens/userProccessing/register_login.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: const Icon(Icons.arrow_circle_left_outlined),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => userLog()));
              },
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.arrow_circle_left_outlined)),
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.arrow_circle_right_outlined)),
              ],
            ),
            title: const Text('Tab Bar Widgets'),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text('Devoloper: Muhammet Aytaç İpekel'),
              ),
              Center(
                child: Text('211216034'),
              ),
              Center(
                child: Text('Asistan: Keyvan Arasteh'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
