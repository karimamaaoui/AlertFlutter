import 'package:flutter/material.dart';

class SimpleDialogPage extends StatelessWidget {
  final title;
  SimpleDialogPage(this.title);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Alert'),
      content: Text(title),
      actions: [
        new FlatButton(onPressed: (){
          Navigator.of(context).pop();
        },
            child: Text("Okay")),
      ],

    );
  }
}
