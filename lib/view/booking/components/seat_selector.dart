import 'package:MobileProject/constants/constants.dart';
import 'package:flutter/material.dart';

import 'build_chairs.dart';

class SeatSelector extends StatefulWidget {
  @override
  _SeatSelectorState createState() => _SeatSelectorState();
}

class _SeatSelectorState extends State<SeatSelector> {
  bool seat = true;
  Widget _chairList(){

    Size size = MediaQuery.of(context).size;
    
      
  
    // 1 is free seats
    // 2 is selected seats
    // 3 is reserved seats
  
    var _chairStatus = [
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 3, 1, 1],
      [1, 1, 1, 1, 1, 3, 3],
      [2, 2, 2, 1, 3, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
    ];
  
    return Container(
      child: Column(
        children: <Widget>[
          for (int i = 0; i < 6; i++)
            Container(
              margin: EdgeInsets.only(top: i == 3 ? size.height * .02 : 0),
              child: Row(
                children: <Widget>[
                  for (int x = 0; x < 9; x++)
                    Expanded(
                      flex: x == 0 || x == 8 ? 2 : 1,
                      child: x == 0 ||
                          x == 8 ||
                          (i == 0 && x == 1) ||
                          (i == 0 && x == 7) ||
                          (x == 4)
                          ? Container()
                          : Container(
                        height: size.width / 11 - 10,
                        margin: EdgeInsets.all(5),
                        child: _chairStatus[i][x - 1] == 1
                            ? BuildChairs.availableChair()
                            : _chairStatus[i][x - 1] == 2
                            ? BuildChairs.selectedChair()
                            : BuildChairs.reservedChair(),
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<MenuData> menu = [
      MenuData(Icons.event_seat, 'A1'),
      MenuData(Icons.event_seat, 'A2'),
      MenuData(Icons.event_seat, 'A3'),
      MenuData(Icons.event_seat, 'A4'),
      MenuData(Icons.event_seat, 'B1'),
      MenuData(Icons.event_seat, 'B2'),
      MenuData(Icons.event_seat, 'B3'),
      MenuData(Icons.event_seat, 'B4'),
      MenuData(Icons.event_seat, 'C1'),
      MenuData(Icons.event_seat, 'C2'),
      MenuData(Icons.event_seat, 'BC'),
      MenuData(Icons.event_seat, 'C4'),
    ];

    

return  Positioned(
            top: 48,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50.0),
                        topLeft: Radius.circular(50.0),
                      ),
                      gradient: LinearGradient(
                        colors: [white, Colors.transparent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0, 1],
                      )),
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    width: 6.0,
                    color: white,
                  ))),
                ),
             Container(
    child: Scrollbar(
  thickness: 3,
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: menu.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 4,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return SeatSelectorWidget(menu[index].title);



            },
          ),],),),),),), ],
            ),
          );


          
    // return Expanded(
    //   flex: 47,
    //   child: Stack(
    //     alignment: Alignment.center,
    //     children: [
    //       Container(
    //         width: size.width,
    //       ),

          //Movie white Screen starts

    //       //Movie white Screen ends

    //       Positioned(
    //           bottom: size.height * .02,
    //           child: Container(width: size.width, child: _chairList())
    //           ),
    //     ],
    //   ),
    // );
  }
}
 class MenuData {
  MenuData(this.icon, this.title);
  final IconData icon;
  final String title;
}


class SeatSelectorWidget extends StatefulWidget {
  String menuTitle;

  SeatSelectorWidget (this.menuTitle);

  @override
  _SeatSelectorWidgetState createState() => _SeatSelectorWidgetState();
}

class _SeatSelectorWidgetState extends State<SeatSelectorWidget> {
  bool seat = true;

  @override
  Widget build(BuildContext context) {
  
        return Card(
                
                elevation: 0.2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                     IconButton (
                      
                      color: seat ? Colors.black : Colors.yellow,
                      
                      onPressed: () {
                        setState(() {
                              seat = !seat;
                      });
                           },
                            icon: const Icon(Icons.event_seat)
                        //menu[index].icon,
                        //size: 30,

                     // ),
                           
                     ),
                      SizedBox(height: 5),
                      Text(
                        widget.menuTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black87),
                      )
                    ],
                  ),
                ),
              );
  }
}