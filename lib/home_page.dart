import 'package:flutter/material.dart';
import 'package:forage/detail.dart';
import 'package:forage/register.dart';
import 'package:forage/form_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Forage'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: context.watch<FormProvider>().getData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              '${context.watch<FormProvider>().getData[index]['name']}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            subtitle: Text(
                '${context.watch<FormProvider>().getData[index]['location']}'),
            onTap: () {
              formProvider.index = index;
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Detail(),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Register(),
            ),
          );
        },
      ),
    );
  }
}
