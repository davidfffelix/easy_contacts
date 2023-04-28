import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../database/script.dart';
import '../my_app.dart';

class ContactListHomePage extends StatelessWidget {
  const ContactListHomePage({super.key});

  Future<List<Map<String, dynamic>>> _search() async {
    String pathDataBase = join(await getDatabasesPath(), 'database');
    Database db = await openDatabase(
      pathDataBase,
      version: 1,
      onCreate: (db, v) {
        db.execute(createTable);
        db.execute(insert1);
        db.execute(insert2);
        db.execute(insert3);
      },
    );
    return db.query('contact');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _search(),
      builder: (context, future) {
        if (future.hasData) {
          var list = future.data;
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Easy Contacts'),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        Navigator.of(context).pushNamed(MyApp.contactForm);
                        // Navigator.pushNamed(context, 'contact-form');
                      },
                    ),
                  ),
                ],
              ),
              body: ListView.builder(
                itemCount: list!.length,
                itemBuilder: (context, index) {
                  var contact = list[index];
                  Widget avatar = CircleAvatar(
                    backgroundImage: NetworkImage(contact['url_avatar']!),
                  );
                  return ListTile(
                    leading: avatar,
                    title: Text(contact['name']),
                    subtitle: Text(contact['telephone']),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else {
          return Container(
            color: Colors.red,
          );
        }
      },
    );
  }
}
