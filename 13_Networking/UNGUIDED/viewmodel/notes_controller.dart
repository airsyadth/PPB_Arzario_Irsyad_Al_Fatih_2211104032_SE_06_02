import 'package:get/get.dart';

class NotesController extends GetxController {
  // Daftar catatan sebagai Observable List
  var notes = <Map<String, String>>[].obs;

  // Menambahkan catatan
  void addNote(String title, String description) {
    notes.add({"title": title, "description": description});
  }

  // Menghapus catatan
  void deleteNote(int index) {
    notes.removeAt(index);
  }
}