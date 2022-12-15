import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(54, 57, 63, 1),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 34, 36, 40),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        ),
        child: ListView(children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
              color: Colors.black,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 30,
                        height: 30,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/avatar.png"),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Conversation with',
                        style: TextStyle(
                            color: Color.fromARGB(255, 179, 171, 171),
                            fontSize: 10),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Russel Hue',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 53, 56, 62),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Text(
                          'Agree to offer',
                          style: TextStyle(color: Colors.white, fontSize: 9),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.content_paste,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.calculate_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                    ],
                  )
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: BubbleSpecialThree(
              text: 'How does it sound for you?',
              color: Color.fromARGB(255, 40, 40, 40),
              tail: false,
              isSender: false,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '13:45',
                style: TextStyle(
                    color: Color.fromARGB(255, 178, 178, 178), fontSize: 9),
              ),
              SizedBox(width: 30.0),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: BubbleSpecialThree(
              text: 'Yes, that sounds good!',
              color: Color.fromARGB(255, 212, 118, 203),
              tail: false,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: BubbleSpecialThree(
              text: 'Added iMassage shape bubbles',
              color: Color.fromARGB(255, 212, 118, 203),
              tail: false,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 30,
                  height: 30,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Russel Hue',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(width: 30.0),
                Text(
                  '13:45',
                  style: TextStyle(
                      color: Color.fromARGB(255, 178, 178, 178), fontSize: 9),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: BubbleSpecialThree(
              text: 'Good! Send you their visual',
              color: Color.fromARGB(255, 40, 40, 40),
              tail: false,
              isSender: false,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 110),
              width: 48.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 126, 38, 227),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              child: Image.asset("assets/images/pikacu.jpeg",
                  width: 500, height: 500, fit: BoxFit.cover),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(10),
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 40, 40, 40),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Flexible(
                  child: TextField(
                    style: TextStyle(color: Colors.white), //<-- SEE HERE
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(30),
                      hintText: "Fantastic! Let's do it",
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),

                      filled: true, //<-- SEE HERE
                      fillColor: Color.fromARGB(255, 40, 40, 40),

                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromARGB(255, 40, 40, 40),
                      )),
                    ),
                  ),
                ),
                Icon(
                  Icons.add_reaction_outlined,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 5.0),
                Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 5.0),
                Icon(
                  Icons.image_outlined,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 5.0),
                SizedBox(width: 5.0),
                Icon(
                  Icons.account_tree_outlined,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 5.0),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent[100],
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Icon(
                    Icons.send,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                SizedBox(width: 5.0),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
