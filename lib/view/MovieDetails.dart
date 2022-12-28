// import 'package:flutter/material.dart';

// import 'Login.dart';
// import 'SignUp.dart';


// class MovieDetails extends StatelessWidget {
//   List currItem;
//   MovieDetails(this.currItem);


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF363f93),
//         leading: Padding(padding: EdgeInsets.all(4), child: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop(),)),
//       ),
//       body: SingleChildScrollView(
//           child: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//              Stack(children: [
//                 Container(
//                   height: 200,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       image: DecorationImage(
//                           fit: BoxFit.fitHeight,
//                           image: AssetImage(currItem[5]))),
//                 ),
//               ]),
//                const Divider(),
//               Padding(padding: const EdgeInsets.all(10), 
//                 child: Text(
//                   currItem[1], 
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(color: Colors.black, fontSize: 16 , fontWeight: FontWeight.bold ),
//                 ),
//               ),
//               const Divider(),
//               Padding(padding: const EdgeInsets.all(10), 
//                 child: Text(
//                   currItem[2], 
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(color: Colors.black, fontSize: 16 ),
//                 ),
//               ),
//               const Divider(),
//               Padding(padding: const EdgeInsets.all(10), 
//               child: Text(
//                 currItem[3], 
//                   textAlign: TextAlign.center,
//                 style: const TextStyle(color: Colors.black, fontSize: 16 ),
//               ),),
//               const Divider(),
//               Padding(padding: const EdgeInsets.all(10), 
//               child: Text(
//                 currItem[4], 
//                   textAlign: TextAlign.center,
//                 style: const TextStyle(color: Colors.black, fontSize: 16 ),
//               ),),
//             ],
//         ),
//       )),
//     );
//   }
// }