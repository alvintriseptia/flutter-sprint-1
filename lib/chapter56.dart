import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Person selectedPerson;
  List<Person> persons = [Person('Alvin'), Person('Bryan'), Person('Cindy')];

  List<DropdownMenuItem> generateItems(List<Person> persons) {
    List<DropdownMenuItem> items = [];
    for (Person person in persons) {
      items.add(DropdownMenuItem(
        child: Text(person.name),
        value: person,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Chapter 56 Dropdown'),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: DropdownButton(
                  isExpanded: true,
                  value: selectedPerson,
                  items: generateItems(persons),
                  onChanged: (value) {
                    setState(() {
                      selectedPerson = value;
                    });
                  },
                ),
              ),
              Text(
                selectedPerson == null
                    ? 'No one selected'
                    : selectedPerson.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ));
  }
}

class Person {
  String name;
  Person(this.name);
}
