// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:salla/layout/cubit/cubit.dart';
import 'package:salla/modules/about/about_screen.dart';
import 'package:salla/modules/faq/faq_screen.dart';
import 'package:salla/modules/profile/profile_screen.dart';
import 'package:salla/shared/components/components.dart';
import 'package:salla/shared/components/constants.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage('assets/images/download.png',),),
            const SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {
                ShopCubit.get(context).getUserData();
                navigateTo(context, ProfileScreen());
              },
              child: Card(
                elevation: 20.0,
                child: Row(
                  children: const [
                    Icon(
                      Icons.person,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {
                ShopCubit.get(context).getFAQ();
                navigateTo(context, FAQScreen());
              },
              child: Card(
                elevation: 20.0,
                child: Row(
                  children: const [
                    Icon(
                      Icons.question_answer_outlined,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'FAQ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {
                ShopCubit.get(context).getAbout();
                navigateTo(context, AboutScreen());
              },
              child: Card(
                elevation: 20.0,
                child: Row(
                  children: const [
                    Icon(
                      Icons.notification_important,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'About Us',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {
                signOut(context);
              },
              child: Card(
                elevation: 20.0,
                child: Row(
                  children: const [
                    Icon(
                      Icons.logout_outlined,
                      size: 30.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
