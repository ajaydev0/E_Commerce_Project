// ignore_for_file: prefer_const_constructors, camel_case_types, file_names, avoid_print

import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:demo_project/Ui/Widgets/Scaffold_Widget.dart';
import 'package:demo_project/Ui/Widgets/Text_Widget.dart';
import 'package:demo_project/User_Data.dart';
import 'package:flutter/material.dart';

import '../../../Ui/Widgets/AppSize_MediaQuery.dart';
import '../../../Ui/Widgets/Container_Widget.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return KScaffold(
      key: _globalKey,
      endDrawer: SafeArea(
        bottom: false,
        child: Drawer(
          // width: Kw(value: 70, context: context),
          child: Column(
            children: [
              Card(
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(
                      right: 80,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            //close Drawer
                            _globalKey.currentState?.closeEndDrawer();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: appcolors.black,
                          ),
                        ),
                        Ktext(text: "Setting", size: 22),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Divider(
                  thickness: 2,
                  color: appcolors.halkablack,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  child: ListTile(
                    title: Ktext(text: "Account Setting"),
                    leading: CircleAvatar(
                      backgroundColor: appcolors.blue400,
                      child: Icon(
                        Icons.settings,
                        size: 20,
                        color: appcolors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  child: ListTile(
                    title: Ktext(text: "My Order"),
                    leading: CircleAvatar(
                      backgroundColor: appcolors.blue400,
                      child: Icon(
                        Icons.create,
                        size: 20,
                        color: appcolors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  child: ListTile(
                    title: Ktext(text: "Reviews"),
                    leading: CircleAvatar(
                      backgroundColor: appcolors.blue400,
                      child: Icon(
                        Icons.reviews,
                        size: 20,
                        color: appcolors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  child: ListTile(
                    title: Ktext(text: "Chat with Us"),
                    // subtitle: Text("Feel Free to Contact Us"),
                    leading: CircleAvatar(
                      backgroundColor: appcolors.blue400,
                      child: Icon(
                        Icons.headset_mic_outlined,
                        size: 20,
                        color: appcolors.white,
                      ),
                    ),

                    onTap: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  child: ListTile(
                    title: Ktext(text: "Help Center"),
                    leading: CircleAvatar(
                      backgroundColor: appcolors.blue400,
                      child: Icon(
                        Icons.question_mark,
                        size: 20,
                        color: appcolors.white,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Divider(
                  thickness: 2,
                  color: appcolors.halkablack,
                ),
              ),
              Card(
                child: ListTile(
                  title: Ktext(text: "Log Out", weight: FontWeight.bold),
                  leading: CircleAvatar(
                    backgroundColor: appcolors.blue400,
                    child: Icon(
                      Icons.logout,
                      size: 20,
                      color: appcolors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: appcolors.grey600,
                  ),
                  onTap: () {
                    LogOut_DialogBox(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Kcontainer(
                h: 190,
                decoration: BoxDecoration(
                  color: appcolors.blue400,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ktext(
                        text: "My Profile",
                        size: 25,
                        weight: FontWeight.bold,
                        color: appcolors.white),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          //Open Drawer
                          _globalKey.currentState?.openEndDrawer();
                        },
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 27,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Center(
                  child: Kcontainer(
                    alignment: Alignment.center,
                    h: 160,
                    w: 160,
                    decoration: BoxDecoration(
                        color: appcolors.white, shape: BoxShape.circle),
                    child: Kcontainer(
                        alignment: Alignment.center,
                        h: 140,
                        w: 140,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(image.Prodile_Img)),
                            color: appcolors.blue400,
                            shape: BoxShape.circle),
                        child: Kcontainer(
                          h: 140,
                          w: 140,
                          alignment: Alignment.bottomRight,
                          child: Kcontainer(
                            h: 33,
                            w: 33,
                            decoration: BoxDecoration(
                              color: appcolors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  print("Edit Profile Pic");
                                },
                                child: Kcontainer(
                                    h: 28,
                                    w: 28,
                                    decoration: BoxDecoration(
                                      color: appcolors.blue400,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.edit,
                                      size: 16,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
          Kcontainer(
            h: Kh(value: 35, context: context),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Ktext(
                      text: KData.userName, size: 23, weight: FontWeight.bold),
                  Ktext(text: KData.userEmail, color: appcolors.halkablack),
                ],
              ),
            ),
          ),
          Kcontainer(
            h: Kh(context: context, value: 25),
            decoration: BoxDecoration(
              color: appcolors.grey200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }

  LogOut_DialogBox(
    context,
  ) {
    return print("Working..");
  }
}
