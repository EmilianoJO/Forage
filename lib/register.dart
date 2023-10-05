import 'package:flutter/material.dart';
import 'package:forage/form_provider.dart';
import 'package:provider/provider.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Forage'),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextField(
                      controller: formProvider.nameController,
                      decoration: InputDecoration(
                        labelText: "Name",
                      ),
                    ),
                    TextField(
                      controller: formProvider.locationController,
                      decoration: InputDecoration(
                        labelText: "Location",
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: formProvider.checked,
                          onChanged: (value) {
                            formProvider.changeCheck();
                          },
                        ),
                        Text("Currently in season"),
                      ],
                    ),
                    TextField(
                      controller: formProvider.notesController,
                      decoration: InputDecoration(
                        labelText: "Notes",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    formProvider.saveInput();
                    Navigator.pop(context);
                  },
                  child: Text("Save"),
                  style: ElevatedButton.styleFrom(primary: Colors.purple),
                ),
                ElevatedButton(
                  onPressed: () {
                    formProvider.deleteInput();
                  },
                  child: Text("Delete"),
                  style: ElevatedButton.styleFrom(primary: Colors.purple),
                ),
              ],
            )
          ],
        ));
  }
}
