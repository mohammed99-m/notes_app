import 'package:hive/hive.dart';

class NoteModel extends HiveObject {
  final String title;
  final String subtitle;
  final String date;
  final int colorCode;

  NoteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.colorCode});
}
