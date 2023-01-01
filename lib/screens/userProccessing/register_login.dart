import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:soloq/screens/discord/discord_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class userLog extends StatefulWidget {
  const userLog({super.key});

  @override
  State<userLog> createState() => _userLogState();
}

enum SingingCharacter { man, women, undefined }

class _userLogState extends State<userLog> {
  final controller = PageController(
    initialPage: 0,
  );
  Set<String> skills = {};
  bool isSwitched = false;
  SingingCharacter? _character = SingingCharacter.undefined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Center(
                        child: Container(
                            height: 180.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                'assets/images/discord_logo.jpeg',
                              ),
                              fit: BoxFit.contain,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                )),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Wrap(
                                  children: [
                                    Text(
                                      'Kayıt Olmak İçin Sola Kaydır.',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Center(
                                        child: Icon(
                                      Icons.arrow_circle_right_outlined,
                                      size: 30,
                                    ))
                                  ],
                                ),
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Form(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            SizedBox(
                              //height: 30,
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Colors.white),
                                  labelText: "Kullanıcı Adı veya mail ",
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      width: 3,
                                      color: Colors.white,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.white),
                                labelText: "Şifre Giriniz",
                                prefixIcon: Icon(
                                  Icons.password,
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    width: 3,
                                    color: Colors.white,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        height: 40,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DiscordScreen()));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white60,
                                            padding: EdgeInsets.all(10),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                          ),
                                          child: Center(child: Text('GİRİŞ')),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                    )
                  ],
                ),
              )),
          Container(
              color: Colors.white70,
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Center(
                        child: Container(
                            height: 180.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                'assets/images/discord_register_logo.png',
                              ),
                              fit: BoxFit.contain,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Form(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            SizedBox(
                              //height: 30,
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Colors.black),
                                  labelText: "Kullanıcı adı giriniz.  ",
                                  fillColor: Colors.black,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      width: 3,
                                      color: Colors.black,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Colors.black),
                                  labelText: "Email giriniz. ",
                                  fillColor: Colors.black,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      width: 3,
                                      color: Colors.black,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.black),
                                labelText: "Şifre Giriniz",
                                prefixIcon: Icon(
                                  Icons.password,
                                  color: Colors.black,
                                ),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    width: 3,
                                    color: Colors.black,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text('Diller:'),
                                  ),
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: InputChip(
                                    label: Text("C++"),
                                    selected: skills.contains('C++'),
                                    selectedColor: Colors.white,
                                    onSelected: (value) {
                                      if (value) {
                                        skills.add('C++');
                                      } else {
                                        skills.remove('C++');
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: InputChip(
                                    label: Text("Python"),
                                    selected: skills.contains('Python'),
                                    selectedColor: Colors.white,
                                    onSelected: (value) {
                                      if (value) {
                                        skills.add('Python');
                                      } else {
                                        skills.remove('Python');
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: InputChip(
                                    label: Text("Java"),
                                    selected: skills.contains('Java'),
                                    selectedColor: Colors.white,
                                    onSelected: (value) {
                                      if (value) {
                                        skills.add('Java');
                                      } else {
                                        skills.remove('Java');
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: InputChip(
                                    label: Text("C#"),
                                    selected: skills.contains('C#'),
                                    selectedColor: Colors.white,
                                    onSelected: (value) {
                                      if (value) {
                                        skills.add('C#');
                                      } else {
                                        skills.remove('C#');
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: InputChip(
                                    label: Text("Php"),
                                    selected: skills.contains('Php'),
                                    selectedColor: Colors.white,
                                    onSelected: (value) {
                                      if (value) {
                                        skills.add('Php');
                                      } else {
                                        skills.remove('Php');
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              children: [
                                Text('Cinsiyet:'),
                                ListTile(
                                  title: const Text('Belirtmek istemiyorum'),
                                  leading: Radio<SingingCharacter>(
                                    value: SingingCharacter.undefined,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text('Erkek'),
                                  leading: Radio<SingingCharacter>(
                                    value: SingingCharacter.man,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text('Kadın'),
                                  leading: Radio<SingingCharacter>(
                                    value: SingingCharacter.women,
                                    groupValue: _character,
                                    onChanged: (SingingCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                      'Mail ile bilgilendirilmek istiyorum:'),
                                ),
                                CupertinoSwitch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                      print(isSwitched);
                                    });
                                  },
                                  activeColor: Colors.green,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        height: 40,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DiscordScreen()));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            padding: EdgeInsets.all(10),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                          ),
                                          child:
                                              Center(child: Text('Kayıt Ol')),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
