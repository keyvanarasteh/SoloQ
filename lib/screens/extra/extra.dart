import 'package:flutter/material.dart';
import 'package:soloq/screens/userProccessing/register_login.dart';

class extra extends StatefulWidget {
  const extra({super.key});

  @override
  State<extra> createState() => _extraState();
}

class _extraState extends State<extra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 50.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Discord Kullanıcı listesi'),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_circle_left_outlined),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => userLog()));
              },
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Kulanıcı #$index')),
              childCount: 1000,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.orange[300]),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
              label: '',
            ),
          ]),
    );
  }
}
