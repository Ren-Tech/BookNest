import 'package:book_nest/models/book_provider.dart';
import 'package:book_nest/utils/file_picker.dart';
import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bookProvider = Provider.of<BookProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("eBook Reader"),
        actions: [
          IconButton(
            icon: const Icon(Icons.upload_file),
            onPressed: () async {
              final filePath = await pickEpubFile();
              if (filePath != null) {
                bookProvider.loadBook(filePath);
              }
            },
          ),
        ],
      ),
      body: Center(
        child: bookProvider.hasBook
            ? EpubView(controller: bookProvider.epubController!)
            : const Text('No book loaded'),
      ),
    );
  }
}
