import 'package:alert_dialog/alerts/AdvanceAlert.dart';
import 'package:alert_dialog/alerts/SimpleCustomAlert.dart';
import 'package:alert_dialog/alerts/SimpleDialog.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            padding: EdgeInsets.zero,
            onPressed: (){
              showDialog(context: context,
                  builder: (BuildContext context){
                    return SimpleDialogPage("this is simple alert dialog");
                  });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue,Colors.green]
                ),
              ),
              child:  Text("Simple Alert Dialog"),
            ),
              ),
          SizedBox(height: 10,),

          SizedBox(
            width: 250,
            height: 50,
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                child: Text("Simple Custom Alert "),
                onPressed: (){
                  showDialog(context: context,
                      builder: (BuildContext context){
                        return SimpleCustomAlertPage("Simple Custom Alert ");
                      });
                },
              color: Colors.green[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
            ),
          ),
          SizedBox(height: 10,),
          RaisedButton(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
              child: Text("Advance Custom Alert "),
              onPressed: (){
                showDialog(context: context,
                    builder: (BuildContext context){
                      return AdvanceAlertPage("oo");
                    });
              }      ,
            color: Colors.orangeAccent,

          ),

        ],
      ),
    );
  }
}
