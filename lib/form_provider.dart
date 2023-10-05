import 'package:flutter/material.dart';

class FormProvider extends ChangeNotifier {
  bool checked = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController notesController = TextEditingController();
  int index = 0;
  final List<Map<String, String>> _data = [];
  List<Map<String, String>> get getData => _data;

  void deleteInput() {
    nameController.text = "";
    locationController.text = "";
    notesController.text = "";
    if (checked) checked = !checked;
    notifyListeners();
  }

  void saveInput() {
    Map<String, String> dataMap = {
      'name': '',
      'location': '',
      'season': '',
      'notes': ''
    };
    dataMap['name'] = nameController.text;
    dataMap['location'] = locationController.text;
    dataMap['season'] =
        checked ? 'Currently in season' : 'Currently not in season';
    dataMap['notes'] = notesController.text;

    _data.add(dataMap);
    // _names.add(nameController.text);
    deleteInput();
    notifyListeners();
  }

  void changeCheck() {
    checked = !checked;
    notifyListeners();
  }
}
