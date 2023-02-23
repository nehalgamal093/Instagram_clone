import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Post {
  final String description;
  final String uid;

  final String username;
  final String postId;
  final DateTime datePublished;
  final String postUrl;
  final String profileImage;
  final likes;
  Post({
    required this.description,
    required this.uid,
    required this.postId,
    required this.username,
    required this.datePublished,
    required this.postUrl,
    required this.profileImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        'description': description,
        'uid': uid,
        'postId': postId,
        'username': username,
        'datePublished': datePublished,
        'postUrl': postUrl,
        'profileImage': profileImage,
        'likes': likes
      };
  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
        description: snapshot['description'],
        uid: snapshot['uid'],
        postId: snapshot['postId'],
        username: snapshot['username'],
        datePublished: snapshot['datePublished'],
        postUrl: snapshot['postUrl'],
        profileImage: snapshot['profileImage'],
        likes: snapshot['likes']);
  }
}
