import 'package:cloud_firestore/cloud_firestore.dart';

class ContactModel {
  final String price;
  final String name;
  final String URL;
  final String id;

  ContactModel({
    required this.price,
    required this.name,
    required this.URL,
    required this.id,
  });

  factory ContactModel.fromDocument(DocumentSnapshot documentSnapshot) {
    String price = documentSnapshot.get("price");
    String name = documentSnapshot.get("name");
    String URL = documentSnapshot.get("URL");
    String id = documentSnapshot.get("id");

    return ContactModel(
      price: price,
      name: name,
      URL: URL,
      id: id,
    );
  }
}
