import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key});

  dummy(){

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 1000,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.ac_unit))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.account_balance_wallet))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.access_alarm_sharp))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.adb))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.add_chart_sharp))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.accessibility_rounded))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.ac_unit))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.account_balance_wallet))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.access_alarm_sharp))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.adb))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.add_chart_sharp))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.accessibility_rounded))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.ac_unit))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.ac_unit))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.ac_unit))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.ac_unit))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.ac_unit))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.ac_unit))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.account_balance_wallet))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.access_alarm_sharp))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.adb))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.add_chart_sharp))),
          Card(child: IconButton(onPressed: dummy, icon: Icon(Icons.accessibility_rounded))),
        ],
      ),
    );
  }
}
