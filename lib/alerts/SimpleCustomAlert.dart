import 'package:flutter/material.dart';

class SimpleCustomAlertPage extends StatelessWidget {
  final title;
  SimpleCustomAlertPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)
      ),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white70,
                child: Icon(Icons.account_balance_wallet,size: 60,),

              ),
            ),
      Expanded(
        child:
            Container(
              color: Colors.green[200],
              child: SizedBox.expand(

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(title,style: TextStyle(color: Colors.white),),
                      RaisedButton(onPressed: (){
                          Navigator.of(context).pop();
                      },
                      child: Text("Okay"),),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
