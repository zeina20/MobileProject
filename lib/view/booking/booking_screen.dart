import 'package:flutter/material.dart';

import 'components/pay_button.dart';
import 'components/custom_app_bar.dart';
import 'components/date_selector.dart';
import 'components/location_text.dart';
import 'components/pay_button.dart';
import 'components/seat_selector.dart';
import 'components/time_selector.dart';

//import 'package:movie_ticket_app/constants/constants.dart';


class BookingScreen extends StatefulWidget {

  final title ;

   BookingScreen({required this.title});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: 
        Column(
          children: [
            //app bar
            CustomAppBar(widget.title),

            //date selector
            DateSelector(),
           SizedBox(height: 10),
            Text("Screen",style: TextStyle(color: Colors.white.withOpacity(1.0),height: 6, fontSize: 15)),
            //Time selector
            //TimeSelector(),

            //Location and theatre
           // LocationText(),

            //Seat selector
            SeatSelector(),
            SizedBox(height: 50),
            //Pay button and seat categories
            PayButton(),
          ],
        ),
      ),
    );
  }
}
