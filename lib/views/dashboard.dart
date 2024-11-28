import 'package:flutter/material.dart';
import 'package:untitled/views/detail_card.view.dart';
import 'package:untitled/widgets/CustomAppbar.dart';
import 'package:untitled/widgets/CustomButtomNav.dart';
import 'package:untitled/widgets/CustomCategory.dart';
import 'package:untitled/widgets/CustomImageCard.dart';
import 'package:untitled/configs.dart' as cf;

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  goToOtherView() async {
    //await Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailCard()));
    bool bought = await Navigator.pushNamed(context, '/detail') as bool;
    print('EL usuario compro? ${bought?"si":"no"}');
    setState(() {});
  }

  changeTitle(){
    cf.actuallyName = '${cf.actuallyName} s';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
          CustomCategory(),
          Text(cf.actuallyName, style: cf.titlesTexts),
          ElevatedButton(
            style: cf.styleButton,
            onPressed: changeTitle,
            child: const Text('Change Text'),
          ),
          Expanded(
            child: ListView(
              children: [
                CustomImagecard('https://images.pexels.com/photos/27549655/pexels-photo-27549655/free-photo-of-cielo-moda-hombre-mano.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', goToOtherView),
                CustomImagecard('https://images.pexels.com/photos/29315816/pexels-photo-29315816/free-photo-of-elegantes-cisnes-junto-al-agua-en-un-dia-tranquilo.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', goToOtherView),
                CustomImagecard('https://images.pexels.com/photos/29137971/pexels-photo-29137971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', goToOtherView),
                CustomImagecard('https://images.pexels.com/photos/27549655/pexels-photo-27549655/free-photo-of-cielo-moda-hombre-mano.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', goToOtherView),
                CustomImagecard('https://images.pexels.com/photos/27549655/pexels-photo-27549655/free-photo-of-cielo-moda-hombre-mano.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', goToOtherView),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
