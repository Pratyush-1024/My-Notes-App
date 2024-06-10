import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

@immutable
class AuthUser {
  final bool isEmailVerified;

  final String? email;

  const AuthUser({
    required this.email,
    required this.isEmailVerified,
  });

  factory AuthUser.fromFirebase(User user) => AuthUser(
        isEmailVerified: user.emailVerified,
        email: user.email,
      );
}
