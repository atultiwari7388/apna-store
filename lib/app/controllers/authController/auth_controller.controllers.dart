import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_store/app/utils/const/const.dart';
import 'package:ecommerce_store/app/view/bottomNavbar/main.view.frontend.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthController extends GetxController {
  //text Controllers

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController =
      TextEditingController();

  //
  bool? isCheck = false;

  //login method

  Future<UserCredential?> loginUser(BuildContext context) async {
    UserCredential? userCredential;
    try {
      await auth
          .signInWithEmailAndPassword(
              email: emailController.text.toString(),
              password: passwordController.text.toString())
          .then((value) {
        //go to bottom
        VxToast.show(context, msg: loggedIn);
        Get.offAll(() => const MainScreen());
      }).onError((error, stackTrace) {
        logoutMethod(context);
        if (kDebugMode) {
          print(error.toString());
        }
        VxToast.show(context, msg: error.toString());
      });
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return userCredential;
  }

  //signUpMethod

  Future<UserCredential?> creteNewAccount(BuildContext context) async {
    UserCredential? userCredential;
    try {
      await auth
          .createUserWithEmailAndPassword(
              email: emailController.text.toString(),
              password: passwordController.text.toString())
          .then((value) {
        return storeUserData(
          name: nameController.text.toString(),
          email: emailController.text.toString(),
          password: passwordController.text.toString(),
        );
      }).then((value) {
        //go to bottom
        VxToast.show(context, msg: newAccountCreated);
        Get.offAll(() => const MainScreen());
      }).onError((error, stackTrace) {
        logoutMethod(context);
        if (kDebugMode) {
          print(error.toString());
        }
        VxToast.show(context, msg: error.toString());
      });
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
      logoutMethod(context);
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return userCredential;
  }

  //store user data to firebase

  storeUserData({name, email, password}) async {
    DocumentReference reference =
        await fireStore.collection(usersCollection).doc(currentUser!.uid);

    reference.set({
      "name": name,
      "email": email,
      "password": password,
      "imageUrl": "",
    });
  }

  //logout user

  logoutMethod(context) async {
    try {
      await auth.signOut();
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
