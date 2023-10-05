import 'package:flutter/material.dart';

class FormProvider extends ChangeNotifier {
  bool checked = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  final List<String> _names = [];
  List<String> get names => _names;

  void deleteInput() {
    nameController.text = "";
    locationController.text = "";
    notesController.text = "";
  }

  void saveInput() {
    _names.add(nameController.text);
    print(_names);
    notifyListeners();
  }

  void changeCheck() {
    checked = !checked;
    notifyListeners();
  }
}
