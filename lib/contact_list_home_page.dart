import 'package:flutter/material.dart';

import 'my_app.dart';

class ContactListHomePage extends StatelessWidget {
  const ContactListHomePage({super.key});

  static const list = [
    {
      'name': 'José',
      'telephone': '(11) 9 9123-0212',
      'avatar': 'https://cdn.pixabay.com/photo/2014/04/02/14/11/male-306408_960_720.png',
    },
    {
      'name': 'Maria',
      'telephone': '(11) 9 9632-7719',
      'avatar': 'https://cdn.pixabay.com/photo/2014/04/02/14/10/female-306407_960_720.png',
    },
    {
      'name': 'Isabel',
      'telephone': '(21) 9 7777-8218',
      'avatar': 'https://cdn.pixabay.com/photo/2023/03/27/20/14/girl-7881639_960_720.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Contatos'),
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
          itemCount: list.length,
          itemBuilder: (context, index) {
            var contact = list[index];
            Widget avatar = CircleAvatar(
              backgroundImage: NetworkImage(contact['avatar']!),
            );
            return ListTile(
              leading: avatar,
              title: Text(contact['name']!),
              subtitle: Text(contact['telephone']!),
              trailing: Container(
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
  }
}
