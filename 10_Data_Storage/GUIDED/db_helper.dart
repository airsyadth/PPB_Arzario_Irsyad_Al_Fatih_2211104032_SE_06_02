import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  // Singleton instance
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  // Constructor factory untuk mengembalikan instance
  factory DatabaseHelper() {
    return _instance;
  }

  // Constructor privat untuk singleton
  DatabaseHelper._internal();

  // Getter untuk database
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Inisialisasi database
  Future<Database> _initDatabase() async {
    // Mendapatkan path lokasi database
    String path = join(await getDatabasesPath(), 'my_prakdatabase.db');

    // Membuka atau membuat database
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  // Membuat tabel di database
  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE my_table(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
    ''');
  }

  // Menambahkan data baru
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await database;
    return await db.insert('my_table', row);
  }

  // Membaca semua data
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await database;
    return await db.query('my_table');
  }

  // Membaca data berdasarkan ID
  Future<Map<String, dynamic>?> getItem(int id) async {
    Database db = await database;
    final List<Map<String, dynamic>> result = await db.query(
      'my_table',
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );
    return result.isNotEmpty ? result.first : null;
  }

  // Menghapus data berdasarkan ID
  Future<int> delete(int id) async {
    Database db = await database;
    return await db.delete(
      'my_table',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  update(Map<String, Object> map) {}
}