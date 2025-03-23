import 'package:hive/hive.dart';

class NoteModel extends HiveObject {
  String title;
  String subtitle;
  final String date;
  int colorCode;

  NoteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.colorCode});
}
