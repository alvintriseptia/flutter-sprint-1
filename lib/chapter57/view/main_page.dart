import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sprint1/chapter57/model/monster.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chapter 57 View")),
      body: FutureBuilder(
        future: Hive.openBox('monsters'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              var monsters = Hive.box('monsters');
              if (monsters.length == 0) {
                monsters.add(Monster(name: 'Monster 1', level: 1));
                monsters.add(Monster(name: 'Monster 2', level: 1));
                monsters.add(Monster(name: 'Monster 3', level: 1));
                monsters.add(Monster(name: 'Monster 4', level: 1));
              }
              return WatchBoxBuilder(
                box: monsters,
                builder: (context, monsters) => Container(
                  margin: EdgeInsets.all(20),
                  child: ListView.builder(
                    itemCount: monsters.length,
                    itemBuilder: (context, index) {
                      Monster monster = monsters.getAt(index);
                      return Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          color: Colors.grey[300],
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 5,
                                offset: Offset(3, 3)),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(monster.name),
                                Text(
                                  monster.level.toString(),
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    monsters.putAt(
                                        index,
                                        Monster(
                                            name: monster.name,
                                            level: monster.level + 1));
                                  },
                                  icon: Icon(Icons.trending_up),
                                  color: Colors.green,
                                ),
                                IconButton(
                                  onPressed: () {
                                    monsters.add(Monster(
                                        name: monster.name,
                                        level: monster.level));
                                  },
                                  icon: Icon(Icons.content_copy),
                                  color: Colors.amber,
                                ),
                                IconButton(
                                  onPressed: () {
                                    monsters.deleteAt(index);
                                  },
                                  icon: Icon(Icons.delete),
                                  color: Colors.red,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              );
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
