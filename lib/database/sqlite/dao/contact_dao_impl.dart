import 'package:firebase/domain/entities/contact.dart';

import '../../../domain/interfaces/contact_dao.dart';

class ContactDAOImpl implements ContactDAO {
  @override
  Future<List<Contact>> find() {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  remove(int id) {
    throw UnimplementedError();
  }

  @override
  save(Contact contact) {
    throw UnimplementedError();
  }
}
