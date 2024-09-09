import 'package:book_nest/models/book_provider.dart';
import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookReader extends StatelessWidget {
  const BookReader({super.key});

  @override
  Widget build(BuildContext context) {
    final bookProvider = Provider.of<BookProvider>(context);
    return EpubView(controller: bookProvider.epubController!);
  }
}
