// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:homeflaw/datamodels/product_datamodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:convert';

class BookmarksProvider extends ChangeNotifier {
  SharedPreferences? _preferences;

  final String _bookmarksIDkey = "bookmarkID";
  List<Product> _bookmarks = [];

  List<Product> get listofBookmarks => _bookmarks.toList();

  void addProduct(Product bookmark) {
    _bookmarks.add(bookmark);
    _bookmarks = _bookmarks.toSet().toList();
    _savePreferences();
    notifyListeners();
  }

  _initialPreferences() async {
    _preferences ??= await SharedPreferences.getInstance();
  }

  _savePreferences() async {
    await _initialPreferences();

    final String encodedBookmarks = json.encode(_bookmarks.toSet().toList());
    _preferences!.setString(_bookmarksIDkey, encodedBookmarks);
    print(_bookmarks);
  }

  loadFromPreferences() async {
    await _initialPreferences();

    final String? bookmarksString =
        _preferences!.getString(_bookmarksIDkey);
    

    if (bookmarksString != null) {
      final decodedBokmarks = json.decode(bookmarksString);
      for (var item in decodedBokmarks) {
        var jsonBookmarks = Product.fromJson(item);

        _bookmarks.add(jsonBookmarks);
      }
      _bookmarks = _bookmarks.toSet().toList();

      notifyListeners();
    }
  }

  removeProduct(Product bookmarks) {
    _bookmarks.remove(bookmarks);
    // var a = _bookmarks.indexOf(bookmarks);
    // _bookmarks.removeAt(a);
    _savePreferences();

    notifyListeners();
  }
}
