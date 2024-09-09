import 'package:file_picker/file_picker.dart';

Future<String?> pickEpubFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['epub'],
  );

  if (result != null) {
    return result.files.single.path;
  }

  return null;
}
