
import 'package:barcode/barcode.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../models/contactModel.dart';

class LoginFirstScreenBloc {
  TextEditingController searchController = TextEditingController();
  final CollectionReference productsCollection =
      FirebaseFirestore.instance.collection('product',
      );

  List<ContactModel> productsContactList = [];

  Future<void> fillproductsContactList(
      List<QueryDocumentSnapshot<Object?>> firebaseList) async {
    for (var firebaseItem in firebaseList) {
    productsContactList.add(ContactModel.fromDocument(firebaseItem));

//await productsCollection.doc(searchController.text).set({"": ""});
    }
    
  }

  // void buildBarcode(
  //   Barcode bc,
  //   String data, {
  //   String? filename,
  //   double? width,
  //   double? height,
  //   double? fontHeight,
  // }) async {
  //   /// Create the Barcode
  //   final svg = bc.toSvg(
  //     data,
  //     width: width ?? 200,
  //     height: height ?? 80,
  //     fontHeight: fontHeight,
  //   );

  //   // Save the image
  //   filename ??= bc.name.replaceAll(RegExp(r'\s'), '-').toLowerCase();
  //   print("filename");
  //   print(filename);

  //   // File('$filename.svg').writeAsStringSync(svg);
  //   await File('$filename.svg').writeAsString(svg);
  }
//}
