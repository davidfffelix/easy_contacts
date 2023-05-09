import '../entities/contact.dart';

abstract class ContactDAO {
  save(Contact contact);

  remove(int id);

  Future<List<Contact>> find();
}
