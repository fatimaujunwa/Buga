// import 'package:bugaa/pages/account_verified.dart';
// import 'package:bugaa/pages/check_mail.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
//
// class Verification extends StatefulWidget {
//   const Verification({Key? key}) : super(key: key);
//
//   @override
//   State<Verification> createState() => _VerificationState();
// }
//
// class _VerificationState extends State<Verification> {
//   bool isEmailVerified=false;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     isEmailVerified=FirebaseAuth.instance.currentUser!.emailVerified;
//     if(!isEmailVerified){
//       sendEmail();
//     }
//   }
//   Future sendEmail()async{
//    try{
//      final user= FirebaseAuth.instance.currentUser!;
//      await user.sendEmailVerification();
//    }catch(e){
//      print(e);
//    }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//   return  isEmailVerified?
//       AccountVerified():CheckYourMail()
//       ;
//   }
// }
