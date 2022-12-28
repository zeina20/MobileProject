// import 'package:flutter/material.dart';
// import 'package:MobileProject/data/movies_data.dart';
// import 'Login.dart';
// import 'MovieDetails.dart';

// class FilmPage1 extends StatelessWidget {
//   const FilmPage1({super.key});

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
//             for(int i = 0 ; i < MoviesData.MoviesList.length ; i++)
//             Padding(padding: EdgeInsets.only( bottom: 20), 
//             child: InkWell(
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (_) => MovieDetails(MoviesData.MoviesList[i])));
//               },
//               child: Column(children: [
//                 Stack(children: [
//                 Container(
//                   height: 400,
//                   width: MediaQuery.of(context).size.width,
//                   decoration:  BoxDecoration(
//                       color: Color(0xFF363f93),
//                       image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: AssetImage(MoviesData.MoviesList[i][5].toString()))),
//                   padding: const EdgeInsets.all(8),
//                 ),
//               ]),
//               Padding(padding: EdgeInsets.symmetric(vertical: 10),child:Text(
//                   MoviesData.MoviesList[i][1].toString(),
//                   style: TextStyle(
//                       color: Color.fromARGB(255, 0, 3, 0),
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold),
//                 ),),
//               ],),
//             ),),
//           ],
//         ),
          
//       )),
//     );
//   }
// }
