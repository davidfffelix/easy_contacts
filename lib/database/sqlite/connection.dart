import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Connection {
  static Database _db;

  static Future<Database> get() async {
    if (_db == null) {
      var path = join(getDatabasesPath(), 'contacts_bank');
    }
    return _db;
  }
}
