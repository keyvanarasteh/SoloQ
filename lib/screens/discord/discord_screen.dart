import 'package:flutter/material.dart';
import 'chat_info_screen.dart';
import 'chat_screen.dart';
import 'messages_screen.dart';
import 'side_bar_screen.dart';
import './common/discord_appbar.dart';

class DiscordScreen extends StatefulWidget {
  const DiscordScreen({super.key});

  @override
  State<DiscordScreen> createState() => _DiscordScreenState();
}

class _DiscordScreenState extends State<DiscordScreen> {
  bool infoVisible = false;
  bool sidebarVisibile = false;

  checkDevice(double width) {
    if (width <= 576) {
      return "mobile";
    } else if (width <= 768) {
      return "tablet";
    } else if (width <= 1024) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;

    var deviceType = checkDevice(scrWidth);

    Widget buildMainArea() {
      if (deviceType == 'mobile') {
        return Stack(children: [
          ChatScreen(),
        ]);
      } else if (deviceType == 'tablet') {
        return Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Row(children: [
                Expanded(
                  flex: 5,
                  child: MessagesScreen(),
                ),
                Expanded(
                  flex: 7,
                  child: ChatScreen(),
                ),
              ]),
            ),
            sidebarVisibile || infoVisible
                ? Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      color: Color.fromARGB(55, 0, 0, 0),
                    ))
                : Positioned(
                    top: 0, left: 0, width: 0, height: 0, child: SizedBox()),
            sidebarVisibile
                ? Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    width: 275,
                    child: AnimatedSize(
                        duration: Duration(milliseconds: 800),
                        child: SideBarScreen()),
                  )
                : Positioned(
                    top: 0, left: 0, width: 0, height: 0, child: SizedBox()),
            infoVisible
                ? Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    width: 275,
                    child: ChatInfoScreen(),
                  )
                : Positioned(
                    top: 0, left: 0, width: 0, height: 0, child: SizedBox()),
          ],
        );
      } else if (deviceType == 'desktop') {
        return Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Row(children: [
                Expanded(
                  flex: 3,
                  child: SideBarScreen(),
                ),
                Expanded(
                  flex: 4,
                  child: MessagesScreen(),
                ),
                Expanded(
                  flex: 5,
                  child: ChatScreen(),
                ),
              ]),
            ),
            sidebarVisibile || infoVisible
                ? Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      color: Color.fromARGB(55, 0, 0, 0),
                    ))
                : Positioned(
                    top: 0, left: 0, width: 0, height: 0, child: SizedBox()),
            infoVisible
                ? Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    width: 275,
                    child: ChatInfoScreen(),
                  )
                : Positioned(
                    top: 0, left: 0, width: 0, height: 0, child: SizedBox()),
          ],
        );
      } else {
        return Row(children: [
          Expanded(
            flex: 2,
            child: SideBarScreen(),
          ),
          Expanded(
            flex: 3,
            child: MessagesScreen(),
          ),
          Expanded(
            flex: 4,
            child: ChatScreen(),
          ),
          Expanded(
            flex: 3,
            child: ChatInfoScreen(),
          ),
        ]);
      }
    }

    return Scaffold(
        body: Column(
      children: [
        DiscordAppBar(
          onSideBarClicked: () {
            if (sidebarVisibile) {
              setState(() {
                sidebarVisibile = false;
                infoVisible = false;
              });
            } else {
              setState(() {
                sidebarVisibile = true;
                infoVisible = false;
              });
            }
          },
          onInfoClicked: () {
            if (infoVisible) {
              setState(() {
                sidebarVisibile = false;
                infoVisible = false;
              });
            } else {
              setState(() {
                sidebarVisibile = false;
                infoVisible = true;
              });
            }
          },
        ),
        Expanded(
          child: buildMainArea(),
        ),
      ],
    ));
  }
}
