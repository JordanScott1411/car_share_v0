import 'package:car_share_v0/UI/chat.dart';
import 'package:car_share_v0/UI/postTra.dart';
import 'package:car_share_v0/UI/profile.dart';
import 'package:car_share_v0/UI/mytrajet.dart';
import 'package:car_share_v0/UI/suiviTraj.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home ({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home>{
//class _HomeState extends State<Home> {

  int currentTab = 0;
  final List<Widget>screens = [
    Mytrajet(),
    Chat(),
    Profile(),
    SuiviTraj(),
    PostTra(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Mytrajet();


  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: PageStorage(
      bucket: bucket, 
      child: currentScreen,
   ),
   floatingActionButton: FloatingActionButton(
    child: Icon(Icons.search),
    onPressed: () {
      //Action que doit faire ce boutton
    },
   ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   bottomNavigationBar: BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment :CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed:() {
                    setState(() {
                      currentScreen= Mytrajet();
                      currentTab=0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.car_rental,
                        color: currentTab == 0? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Mes Trajets',
                        style: TextStyle(color: currentTab ==0 ? Colors.blue : Colors.grey
                        ),
                      )
                    ],
                  ),
              ),
                MaterialButton(
              minWidth: 40,
              onPressed:() {
                setState(() {
                  currentScreen= PostTra();
                  currentTab=1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.ac_unit,
                    color: currentTab == 1? Colors.blue : Colors.grey,
                  ),
                  Text(
                    'Publier',
                    style: TextStyle(color: currentTab ==1 ? Colors.blue : Colors.grey
                    ),
                  )
                ],
              ),
              )                
              ],
            ), 
            //Alignnement des la 2e partie des bouttons de navigation sur la droite
             Row(
              crossAxisAlignment :CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed:() {
                    setState(() {
                      currentScreen= Mytrajet();
                      currentTab=0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: currentTab == 0? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Mes Trajets',
                        style: TextStyle(color: currentTab ==0 ? Colors.blue : Colors.grey
                        ),
                      )
                    ],
                  ),
              ),
                MaterialButton(
              minWidth: 40,
              onPressed:() {
                setState(() {
                  currentScreen= PostTra();
                  currentTab=1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.ac_unit,
                    color: currentTab == 1? Colors.blue : Colors.grey,
                  ),
                  Text(
                    'Publier',
                    style: TextStyle(color: currentTab ==1 ? Colors.blue : Colors.grey
                    ),
                  )
                ],
              ),
              )                
              ],
            ), 
          ],
        ),
        
        

      ),
   ),
   );
  }
}