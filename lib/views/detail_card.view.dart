import 'package:flutter/material.dart';
import 'package:untitled/configs.dart' as cf;
import 'package:untitled/controllers/detail_card.controller.dart';
import 'package:untitled/models/dragonball_character.model.dart';

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
    var wV = MediaQuery.of(context).size.width;
    var hV = MediaQuery.of(context).size.height;
    print("Ancho: $wV");
    print("Alto: $hV");
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
          ElevatedButton(
            style: cf.styleButton,
            onPressed: detailController.printPlatform,
            child: const Text('Platform'),
          ),
          Expanded(
              child: Center(
                child: SizedBox(
                  height: double.infinity,
                  width: wV > 800? 800 : wV,
                  child: ListView.builder(
                    itemCount: detailController.allCharacters.length,
                    itemBuilder: (context, index) {
                    DragonBallModel itemDr =  detailController.getItemDragonBall(detailController.allCharacters[index]);
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(itemDr.image),
                        ),
                        title: Text(itemDr.name),
                        subtitle: Text(itemDr.race),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp)),
                      ),
                    );
                  },),
                ),
              )
          )
        ],
      ),
    );
  }
}
