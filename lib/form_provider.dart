import 'package:flutter/material.dart';

class FormProvider extends ChangeNotifier {
  bool checked = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController notesController = TextEditingController();
  List<Map<String, String>> dataArray = [];
  Map<String, String> data = {
    'name': '',
    'location': '',
    'notes': '',
    'season': ''
  };

  void deleteInput() {
    nameController.text = "";
    locationController.text = "";
    notesController.text = "";
  }

  void saveInput() {
    data['name'] = nameController.text;
    data['location'] = locationController.text;
    data['notes'] = notesController.text;
    data['season'] =
        checked ? 'Currently in season' : 'Currently not in season';
    UsersList();
    notifyListeners();
  }

  void changeCheck() {
    checked = !checked;
    notifyListeners();
  }

  List<Widget> UsersList() {
    List<Widget> listTiles = [];
    listTiles.add(
      ListTile(
        title: Text(
          '${data['name']}',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '${data['location']}',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );

    print('Data saved: ${data.toString()}');
    return listTiles;
  }
//   List<Widget> UsersList() {
//     List<Widget> listTiles = [];
//     // for (var user in dataArray) {
//     //   listTiles.add(
//     //     ListTile(
//     //       title: Text(
//     //         '${user['name']}',
//     //         style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//     //       ),
//     //       subtitle: Text(
//     //         '${user['location']}',
//     //         style: TextStyle(
//     //           fontSize: 20,
//     //         ),
//     //       ),
//     //     ),
//     //   );
//     // }
//     listTiles.add(
//       ListTile(
//         title: Text(
//           '${data['name']}',
//           style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//         ),
//         subtitle: Text(
//           '${data['location']}',
//           style: TextStyle(
//             fontSize: 20,
//           ),
//         ),
//       ),
//     );
//     print(data['name']);
//     print('entro');
//     return listTiles;
//   }
}
