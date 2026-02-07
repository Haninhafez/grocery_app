import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/features/auth/model/user_model.dart';
import 'package:grocery_app/features/auth/service/local_storage.dart';
import 'package:grocery_app/features/auth/widgets/show_gratats.dart';

Future<void> createAccount(BuildContext context, UserModel userModel) async {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: userModel.email!,
    password: userModel.password!,
  );
  final user = credential.user;
  await FirebaseFirestore.instance.collection('users').doc(user!.uid).set({
    'firstName': userModel.firstName,
    'lastName': userModel.lastName,
    'email': userModel.email,
    'createdAt': FieldValue.serverTimestamp(),
  });

  await LocalStorage().saveLogin(
    userId: user.uid,
    userName: userModel.fullName,
    userEmail: userModel.email!,
    isLoggedIn: true,
  );
  final UserName = await LocalStorage().getName();

  showCongrats(context: context, name: UserName!);
}

Future<void> signIn(UserModel userModel) async {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: userModel.email!,
    password: userModel.password!,
  );
}
