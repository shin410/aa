
import 'package:aa/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final String name = "柴犬";
  final List<String> entries = <String>[
    '柴犬',
    'シベリアンハスキー',
    'ゴールデンレトリーバー',
  ];
  final List imageUrl = [
    'https://upload.wikimedia.org/wikipedia/commons/5/58/Shiba_inu_taiki.jpg',
    'https://cdn.mofmo.jp/v3/640/imeditor_storage/1/article/1249743601.jpg',
    'https://img.wanqol.com/2021/12/4eeceb88-shutterstock_37260766.jpg?auto=format'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 120,
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondPage(name),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.search_rounded,
                          size: 50,
                          color: Colors.red,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 120,
                        child: Image.network(
                          '${imageUrl[index]}',
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        ' ${entries[index]}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}
