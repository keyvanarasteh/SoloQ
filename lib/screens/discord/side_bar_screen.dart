// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SideBarScreen extends StatelessWidget {
  const SideBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          border: Border(
              left: BorderSide(
                color: Colors.black,
              ),
              right: BorderSide(
                color: Colors.black,
              )),
        ),
        child: ListView(
          children: [
            SideBarItem(
              icon: Icon(
                Icons.inbox_outlined,
                color: Colors.white,
                size: 20,
              ),
              name: 'Pinned',
              count: '5',
            ),
            SideBarItem(
              icon: Icon(
                Icons.messenger_outline_sharp,
                size: 20,
                color: Colors.black,
              ),
              name: 'Sent messages',
              count: '35',
              active: true,
            ),
            SideBarItem(
              icon: Icon(
                Icons.garage_outlined,
                size: 20,
                color: Colors.white,
              ),
              name: 'Live Chat',
              count: '2',
            ),
            SideBarItem(
              icon: Icon(
                Icons.archive_outlined,
                size: 20,
                color: Colors.white,
              ),
              name: 'Archived',
              count: '',
            ),
            SideBarItem(
              icon: Icon(
                Icons.block,
                color: Colors.white,
                size: 20,
              ),
              name: 'Blocked',
              count: '',
            ),
            SideBarItem(
              icon: Icon(
                Icons.restore_from_trash_outlined,
                color: Colors.white,
                size: 20,
              ),
              name: 'Trash',
              count: '',
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 157, 95, 152),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    Container(
                        height: 70,
                        width: 100,
                        child: Image.asset("assets/images/premium.webp")),
                    Text(
                      'Get Premium',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Increase the quantity Responses to your proffesionel resume',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Text(
                        'Buy Premium',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SideBarItem extends StatelessWidget {
  final String name;
  final Icon icon;
  final String count;
  final bool active;

  const SideBarItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.count,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: active ? Colors.amber[200] : Colors.black),
            child: Row(
              children: [
                SizedBox(width: 10.0),
                icon,
                SizedBox(width: 10.0),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 10,
                      color: active ? Colors.black : Colors.white),
                ),
                SizedBox(width: 10.0),
                Text(
                  count,
                  style: TextStyle(color: active ? Colors.black : Colors.white),
                ),
                SizedBox(width: 10.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
