import 'package:hive/hive.dart';
import 'package:hivep2/models/note_model.dart';

class NoteAdapter extends TypeAdapter<NoteModel> {
  @override
  NoteModel read(BinaryReader reader) {
    // TODO: implement read
    return NoteModel(
        title: reader.readString(),
        subtitle: reader.readString(),
        date: reader.readString(),
        colorCode: reader.readInt());
  }

  @override
  // TODO: implement typeId
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, NoteModel obj) {
    writer.writeString(obj.title);
    writer.writeString(obj.subtitle);
    writer.writeString(obj.date);
    writer.writeInt(obj.colorCode);
  }
}
