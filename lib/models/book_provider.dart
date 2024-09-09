import 'dart:io'; // Import this to use File
import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';

class BookProvider with ChangeNotifier {
  EpubController? _epubController;
  bool _hasBook = false;

  EpubController? get epubController => _epubController;
  bool get hasBook => _hasBook;

  // Load the ePub file
  void loadBook(String filePath) {
    final File epubFile = File(filePath); // Convert file path to File object
    _epubController = EpubController(document: EpubDocument.openFile(epubFile));
    _hasBook = true;
    notifyListeners(); // Notify UI to update
  }

  void clearBook() {
    _epubController = null;
    _hasBook = false;
    notifyListeners();
  }
}
