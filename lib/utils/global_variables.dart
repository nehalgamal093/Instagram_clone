import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/add_post_screen.dart';
import 'package:instagram_clone/screens/field_screen.dart';

const webScreenSize = 600;
const homeScreenItems = [
  FieldScreen(),
  Text('Search'),
  AddPostScreen(),
  Text('Fav'),
  Text('Profile'),
];
