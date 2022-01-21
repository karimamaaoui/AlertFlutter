import 'package:flutter/material.dart';

class AdvanceAlertPage extends StatelessWidget {
  final title;
  AdvanceAlertPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)
    ),
    child:Stack(
      overflow: Overflow.visible,
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10,70,10,10),
            child: Column(
              children: [
                Text("Warining !!!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                SizedBox(height: 5,),
                Text("You can't access this file",style: TextStyle(fontSize: 20),textAlign: TextAlign.center),
                SizedBox(height: 20,),
                RaisedButton(onPressed: (){
                  Navigator.of(context).pop();

                },
                  child: Text("Okay",style: TextStyle(color: Colors.white),),

                )
              ],
            ),
          ),
        ),
      Positioned(
          child:CircleAvatar(
            backgroundColor: Colors.cyan[200],
            radius: 60,
            child: Icon(Icons.assistant_photo, size: 50,color: Colors.white,),
          ),
          top:-60

      ),
      ],
    )

    );
  }
}
