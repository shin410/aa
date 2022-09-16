import 'package:aa/dog.dart';
import 'package:aa/second_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:aa/first_page_model.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('dogs').snapshots();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DogListModel>(
        create: (_) => DogListModel()..fetchDogList(),
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text(
                "好きな犬リスト",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: [
                Icon(Icons.pets),
                SizedBox(width: 30),
              ],
            ),
            body: Center(
              child: Consumer<DogListModel>(builder: (context, model, child) {
                final List<Dog>? dogs = model.dogs;

                if (dogs == null) {
                  return CircularProgressIndicator();
                }

                final List<Widget> widgets = dogs!
                    .map((dog) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.network(dog.imgURL!)),
                              Text(
                                dog.title,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ))
                    .toList();

                return StreamBuilder<QuerySnapshot>(
                  stream: _usersStream,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text("Loading");
                    }

                    return ListView(
                      children: widgets,
                    );
                  },
                );
              }),
            )));
  }
}
