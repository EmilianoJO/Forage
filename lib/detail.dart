import 'package:flutter/material.dart';
import 'package:forage/form_provider.dart';
import 'package:provider/provider.dart';

class Detail extends StatelessWidget {
  const Detail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Forage detail'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  '${formProvider.getData[formProvider.index]['name']}',
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            Row(
              children: [
                Icon(Icons.map),
                Text(
                  '${formProvider.getData[formProvider.index]['location']}',
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            Row(
              children: [
                Icon(Icons.calendar_month),
                Text(
                  '${formProvider.getData[formProvider.index]['season']}',
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            Row(
              children: [
                Icon(Icons.note),
                Text(
                  '${formProvider.getData[formProvider.index]['notes']}',
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}
