
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

class User {
  final String uid;
  String email;
  String displayName;
  bool isEmailVerified = true;
  bool isAnonymous = false;

  String get gravatarURL {
    return "https://gravatar.com/avatar/" + md5.convert(utf8.encode(email)).toString() + "?s=800&d=identicon&r=x";
  }

  User({
    @required this.uid,
    this.email,
    this.displayName,
    this.isEmailVerified,
    this.isAnonymous,
  });

  /*static User ofFirebaseUser(FirebaseUser u)
  {
    if(u == null) return null;
    return User(
        uid: u.uid,
        email: u.email,
        displayName: u.displayName,
        isEmailVerified: u.isEmailVerified,
        isAnonymous: u.isAnonymous
    );
  }*/
}