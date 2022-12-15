// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(54, 57, 63, 1),
          border: Border(
            left: BorderSide(
              color: Color.fromRGBO(54, 57, 63, 1),
            ),
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 15,
                left: 10,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Flexible(
                    child: TextField(
                      style: TextStyle(color: Colors.white), //<-- SEE HERE
                      textAlign: TextAlign.left,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 185, 188, 191),
                            size: 40,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(30),
                        hintText: "Search ",
                        hintStyle:
                            TextStyle(fontSize: 15.0, color: Colors.white),
                        filled: true, //<-- SEE HERE
                        fillColor: Color.fromARGB(255, 33, 35, 38),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black,
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'All Messages',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 199, 194, 194)),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.keyboard_arrow_up_outlined,
                    color: Color.fromARGB(255, 199, 194, 194),
                  )
                ],
              ),
            ),
            ChatItem(
              avatar: 'assets/images/avatar.png',
              name: 'Keyvan Arasteh',
              number: '535 231 18 20',
              message: 'what is this',
              time: '19:22',
            ),
            ChatItem(
              avatar: 'assets/images/avatar.png',
              name: 'Ramazan Bakır',
              number: '213 213 23 23',
              message: 'see you',
              time: '18:55',
            ),
            ChatItem(
              avatar: 'assets/images/avatar.png',
              name: 'Russel Hue',
              number: '213 213 23 23',
              message: 'hiii',
              time: '18:30',
              active: true,
            ),
            ChatItem(
              avatar: 'assets/images/avatar.png',
              name: 'Ahmet Selim',
              number: '321 323 34 34',
              message: 'how are you',
              time: '14:45',
            ),
            ChatItem(
              avatar: 'assets/images/avatar.png',
              name: 'Ramazan Şen',
              number: '321 655 65 87',
              message: 'yes ı doesnt',
              time: '13:23',
            ),
            ChatItem(
              avatar: 'assets/images/avatar.png',
              name: 'Ahmad al khas',
              number: '346 645 64 48',
              message: 'good morning',
              time: '07:23',
            ),
            ChatItem(
              avatar: 'assets/images/avatar.png',
              name: 'Farzad Kiani',
              number: '345 392 04 17',
              message: 'good night',
              time: '00:45',
            ),
          ],
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String name;
  final String message;
  final String number;
  final String avatar;
  final String time;
  final bool active;

  const ChatItem({
    Key? key,
    required this.name,
    required this.avatar,
    required this.time,
    required this.message,
    required this.number,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: active
              ? Color.fromARGB(255, 29, 31, 34)
              : Color.fromRGBO(54, 57, 63, 1),
          border: Border(
              bottom: BorderSide(
            color: Color.fromRGBO(54, 57, 63, 1),
          )),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(avatar),
                ),
                SizedBox(width: 10.0),
                Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      number,
                      style: TextStyle(
                          color: Color.fromARGB(255, 136, 136, 136),
                          fontSize: 10),
                    ),
                    Text(
                      message,
                      style: TextStyle(
                        color: Color.fromARGB(255, 136, 136, 136),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(time),
          ],
        ),
      ),
    );
  }
}
