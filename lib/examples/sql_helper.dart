import 'package:sqflite/sqflite.dart' as sql;

class SqlHelper {
  static Future<void> createTable(sql.Database database) async{
    await database.execute("""
    create table
    Record(
    id integer primary key autoincrement not null,
    title text,
    description text,
    createdAt timestamp not null default current_timestamp
    )
    """);
  }
  static Future<sql.Database> createDatabase() async{
    return await sql.openDatabase(
      'spectrum.db',
      version: 1,
      onCreate: (sql.Database data, version) {
        createTable(data);
      },
    );
  }
static Future<int> createItem(String? title, String? description)async{
  final database = await SqlHelper.createDatabase();
  final row = {'title': title,'description':description};
  final rowId = await database.insert('Record',row,
  conflictAlgorithm: sql.ConflictAlgorithm.replace);
  return rowId;
  }
  static Future<List<Map<String,dynamic>>> readAllItems() async{
  final database = await SqlHelper.createDatabase();
  return database.query('Record',orderBy: 'id');
}

static Future<List<Map<String,dynamic>>>getIndividualItem(int id) async {
    final database = await SqlHelper.createDatabase();
    return database.query('Record',where: 'id=?', limit: 1,whereArgs: [id]);
}
  static Future<int> updateRow(
      int? id, String? title, String? description) async {
    final database = await SqlHelper.createDatabase();
    final editingRow = {
      'title': title,
      'description': description,
      'createdAt': DateTime.now().toString()
    };
    final editedRowID = database.update('Record',editingRow,where:'id=?',whereArgs: [id]);
    return editedRowID;
}
static Future<void> deleteRow(int id) async{
    final database = await SqlHelper.createDatabase();
    await database.delete('Record',where: 'id=?',whereArgs: [id]);
}
}