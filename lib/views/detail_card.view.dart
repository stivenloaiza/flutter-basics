import 'package:flutter/material.dart';
import 'package:untitled/configs.dart' as cf;
import 'package:untitled/controllers/detail_card.controller.dart';

class DetailCard extends StatefulWidget {
  const DetailCard({super.key});

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  DetailController detailController = DetailController();

  changeTitle() async {
    cf.actuallyName = '${cf.actuallyName} x';
    await detailController.getDragonBalls();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: Text(cf.actuallyName, style: cf.titlesTexts,),
          ),
          ElevatedButton(
            style: cf.styleButton,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Return'),
          ),
          ElevatedButton(
            style: cf.styleButton,
            onPressed: changeTitle,
            child: const Text('Change Text'),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: detailController.allCharacters.length,
                itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(detailController.allCharacters[index]["image"]),
                    ),
                    title: Text(detailController.allCharacters[index]["name"]),
                    subtitle: Text(detailController.allCharacters[index]["race"]),
                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp)),
                  ),
                );
              },)
          )
        ],
      ),
    );
  }
}
