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
    final formProvider = Provider.of<FormProvider>(context);
    final names = formProvider.names;
    return Scaffold(
      appBar: AppBar(
        title: Text('Forage'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final name = names[index];
          return ListTile(
            title: Text('$name'),
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
