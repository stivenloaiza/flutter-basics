import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget {
  CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  Color iceCreamColor = Colors.white;

  changeColorIceCream(){
    iceCreamColor = iceCreamColor == Colors.black? Colors.white : Colors.black;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 100,
      child: Row(
        children: [
          IconButton(onPressed: changeColorIceCream, icon: Icon(Icons.icecream, color: iceCreamColor, size: 50,)),
          Text('Heladeria Gates', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),)
        ],
      ),
    );
  }
}
