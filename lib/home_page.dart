import 'package:flutter/material.dart';
import 'package:forage/register.dart';
import 'package:forage/form_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formProvider = context.watch<FormProvider>();
    formProvider.UsersList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Forage'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Consumer<FormProvider>(
          builder: (context, formProvider, child) {
            // Call UsersList method directly and map the widgets
            final listTiles = formProvider.UsersList().map((widget) {
              return widget;
            }).toList();

            return ListView(
              children: listTiles,
            );
          },
        ),
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
              builder: (context) => ChangeNotifierProvider(
                create: (context) => FormProvider(),
                child: Register(),
              ),
            ),
          );
        },
      ),
    );
  }
}
