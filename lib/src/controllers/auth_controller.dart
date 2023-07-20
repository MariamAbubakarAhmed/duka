import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();
  late Rx<User?> firebaseUser;
//holds extra user data
  var firebaseUserData = {}.obs;
//from Utils
  var auth;
  var firestore;}
