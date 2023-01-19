import 'package:MobileProject/services/movies_data_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../data/homedata.dart';
import 'moviebuilder.dart';

class Detail extends StatefulWidget {
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    loadData();
    super.initState();
  }


  Future<void> loadData() async {
      CollectionReference _collectionRef = FirebaseFirestore.instance.collection('films');
      QuerySnapshot querySnapshot = await _collectionRef.get();
      MoviesDataServices.MoviesDataList = querySnapshot.docs;
      setState(() {
        isLoading = false;
      });
  }
  // final String? index;
  // const Detail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ? const Text("Loading") : Row(
        children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: MoviesDataServices.MoviesDataList.length,
                itemBuilder: (context, int index) {
                  Map<String, dynamic>? filmData = MoviesDataServices.MoviesDataList[index].data() as Map<String, dynamic>?;
                  print(filmData!["name"]);
                  return moviebuilder(
                    index: index,
                    title: filmData['name'],
                    image: filmData['image'],
                    rating: "10/10",
                  );
                }),
          )
        ],
      ),
    );
    
  }
}



