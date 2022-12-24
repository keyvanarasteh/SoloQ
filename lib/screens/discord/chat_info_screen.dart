// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ChatInfoScreen extends StatefulWidget {
  const ChatInfoScreen({super.key});

  @override
  State<ChatInfoScreen> createState() => _ChatInfoScreenState();
}

class _ChatInfoScreenState extends State<ChatInfoScreen> {
  //expansison
  //expansison
  List<bool> boxCase = [
    false,
    false,
    false,
    false,
  ];
  //alert widget
  call_phone() {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Row(
                children: [
                  Icon(
                    Icons.phone_callback_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Ara"),
                ],
              ),
            ));
  }

  //alert widget
  video_chat() {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Row(
                children: [
                  Icon(
                    Icons.video_camera_back_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Görüntülü Ara"),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    //alert widget
    return Scaffold(
      backgroundColor: Color.fromRGBO(54, 57, 63, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 350,
                width: 250,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 124, 104, 222),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(top: 10, left: 20, right: 10),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/avatar.png"),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Russel Hue',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '+(1) 345-123-5467',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 209, 203, 203)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              call_phone();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(198, 97, 82, 196),
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.phone_callback_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 13.0),
                        Container(
                          height: 40,
                          width: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              video_chat();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(198, 97, 82, 196),
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.video_camera_back_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 13.0),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(198, 97, 82, 196),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Icon(
                            Icons.volume_off_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 13.0),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(198, 97, 82, 196),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Icon(
                            Icons.badge_outlined,
                            color: Color.fromARGB(255, 156, 152, 152),
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 10.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Hello Everybody!',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Our company are looking for!',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(198, 97, 82, 196),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Text(
                              'UI/UX Designer',
                              style: TextStyle(color: Colors.white54),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.amber[100],
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Text(
                              'QA',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 210, 108, 161),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Java Script Developer',
                              style: TextStyle(color: Colors.white54),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(197, 100, 181, 147),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Seo',
                              style: TextStyle(color: Colors.white54),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(237, 92, 45, 81),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Project Manager',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ExpansionPanelList(
              expansionCallback: (index, isOpen) {
                for (var i = 0; i < boxCase.length; i++) {
                  boxCase[i] = false;
                }
                setState(() {
                  boxCase[index] = !isOpen;
                });
                print('tıkla $isOpen');
              },
              children: [
                ExpansionPanel(
                  backgroundColor: Color.fromRGBO(54, 57, 63, 1),
                  headerBuilder: ((context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Attachments",
                        style: TextStyle(color: Colors.white60),
                      ),
                    );
                  }),
                  body: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  isExpanded: boxCase[0],
                ),
                ExpansionPanel(
                  backgroundColor: Color.fromRGBO(54, 57, 63, 1),
                  headerBuilder: ((context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Links",
                        style: TextStyle(color: Colors.white60),
                      ),
                    );
                  }),
                  body: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  isExpanded: boxCase[1],
                ),
                ExpansionPanel(
                  backgroundColor: Color.fromRGBO(54, 57, 63, 1),
                  headerBuilder: ((context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "All Vacancies",
                        style: TextStyle(color: Colors.white60),
                      ),
                    );
                  }),
                  body: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  isExpanded: boxCase[2],
                ),
                ExpansionPanel(
                  backgroundColor: Color.fromRGBO(54, 57, 63, 1),
                  headerBuilder: ((context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Appointments",
                        style: TextStyle(color: Colors.white60),
                      ),
                    );
                  }),
                  body: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  isExpanded: boxCase[3],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.amber[100]),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.check),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Interview with lead desi..',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                        Text(
                          'Sep 25, 20022 10:30 AM',
                          style: TextStyle(fontSize: 13, color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color: Color.fromARGB(255, 225, 199, 122),
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Interview with CTO',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                        Text(
                          'Sep 28, 20022 14:25 AM',
                          style: TextStyle(fontSize: 13, color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(left: 10),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: Color.fromARGB(255, 225, 199, 122),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Finish Test Project',
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                          Text(
                            'Sep 25, 20022 10:30 AM',
                            style:
                                TextStyle(fontSize: 13, color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                transform: Matrix4.identity()..rotateZ(63)),
            SizedBox(
              height: 110,
            ),
            Container(
                height: 50,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: Color.fromARGB(255, 225, 199, 122),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Finish Test Project2',
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                          Text(
                            'Sep 25, 20022 10:30 AM',
                            style:
                                TextStyle(fontSize: 13, color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                transform: Matrix4.identity()..rotateZ(50)),
          ],
        ),
      ),
    );
  }
}
