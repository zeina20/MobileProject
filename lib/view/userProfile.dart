import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


  // @override
  // State<SignUp> createState() => _SignUpState();

class userProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .5,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(
                                MediaQuery.of(context).size.width * 0.5, 100.0),
                            bottomRight: Radius.elliptical(
                                MediaQuery.of(context).size.width * 0.5, 100.0),
                          ),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://cdn-icons-png.flaticon.com/512/219/219969.png"),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Stack(
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Mariam Galal',
                                style: TextStyle(
                                  color: Color(0xffBDBDBD),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // CircleAvatar(
                          //   radius: 30,
                          //   backgroundColor: Color(0xffD8D8D8),
                          //   child: Icon(
                          //     Icons.edit,
                          //     size: 30,
                          //     color: Color(0xff6E6E6E),
                          //   ),
                          // ),
                          CircleAvatar(
                            radius: 70,
                            // child: AssetImage("dp.png"),
                            backgroundImage:  NetworkImage("https://cdn-icons-png.flaticon.com/512/219/219969.png")
                            // AssetImage("assets/images/dp.png"),
                          ),
                          // SizedBox( height:60, width:60, child:
                          // FloatingActionButton(onPressed: null ,child: Text("    dp  change"))),
                        //TextButton(onPressed: null, child: Text("change picture"))
                        CircleAvatar(radius: 30,
                            backgroundColor: Color(0xffD8D8D8),
                          child: IconButton(onPressed: null, icon: Icon(Icons.edit) ))
                        
                        ],
                         
                      ),
                    ),
                  ],
                ),
              ),
              
              
              Container(
                color: Color(0xffF8F8F8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Column(
                        children: [
                          Text('Email:'),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'nat@gmail.com',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Column(
                        children: [
                          Text('Address:'),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'sheraton',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xffF8F8F8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Column(
                        children: [
                          Text('Phone:'),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            '017584620',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Column(
                        children: [
                          Text('Date of Birth:'),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            '20/12',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}