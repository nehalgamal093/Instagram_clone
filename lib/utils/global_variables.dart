import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/add_post_screen.dart';
import 'package:instagram_clone/screens/field_screen.dart';
import 'package:instagram_clone/screens/profile_screen.dart';
import 'package:instagram_clone/screens/search_screen.dart';

const webScreenSize = 600;
List<Widget> homeScreenItems = [
  FieldScreen(),
  SearchScreen(),
  AddPostScreen(),
  Text('Fav'),
  ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid)
];
