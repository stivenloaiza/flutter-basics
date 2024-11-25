import 'package:flutter/material.dart';

class CustomImagecard extends StatelessWidget {
  String urlImage;
  VoidCallback tapCustom;
  CustomImagecard(this.urlImage,  this.tapCustom);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.pinkAccent,
          child: Column(
            children: [
              Image.network(urlImage,
                width: 100, height: 100,),
              IconButton(onPressed: tapCustom, icon: Icon(Icons.remove_red_eye))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
