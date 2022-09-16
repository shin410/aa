import 'package:aa/dog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DogListModel extends ChangeNotifier {
  List<Dog>? dogs;

  void fetchDogList() async {
    final QuerySnapshot snapshot =
    await FirebaseFirestore.instance.collection('dogs').get();

    final List<Dog> dogs = snapshot.docs.map((DocumentSnapshot document) {
      Map<String, dynamic> data = document.data() as Map<String, dynamic>;
      final String id = document.id;
      final String title = data['title'];
      final String? imgURL = data['imgURL'];
      return Dog(id, title, imgURL!,);
    }).toList();

    this.dogs = dogs;
    notifyListeners();
  }

  Future delete(Dog dog) {
    return FirebaseFirestore.instance.collection('dogs').doc(dog.id).delete();
  }
}