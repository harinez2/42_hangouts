import 'package:contacts/screens/add_new_contact_page.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('User1'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('User2'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddNewContactPage()));
        },
        tooltip: 'Add new contact',
        child: const Icon(Icons.add),
      ),
    );
  }
}
