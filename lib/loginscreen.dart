import 'package:flutter/material.dart';
import 'package:project/model/loginModel.dart';

class loginscreen extends StatelessWidget
{
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search),)
      ],      
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
          decoration: const InputDecoration(
          icon: Icon(Icons.person),
          // ignore: unnecessary_string_interpolations
  ),
  controller: name,
    
    onChanged: (name) {
    print('First text field: $name');
    if(name != null && name.contains('@')){ print('Do not use the @ char.');};
  },

    
  ),
),
TextField(
    decoration: const InputDecoration(
    icon: Icon(Icons.password),
    hintText: 'Email',
    labelText: 'Email *',
  ),
  controller: email,
),
SizedBox(
  height: 50,
),
Container(
  color: Colors.yellow,
  child:   TextButton(
  
              style: TextButton.styleFrom(
  
                textStyle: const TextStyle(
  
                  fontSize: 20,
  
  
                  ),
  
              ),
  
              onPressed: () => {
                // ignore: avoid_print
                print(name),
                // ignore: avoid_print
                print(email),
              },
  
              child: const Text('Login'),
  
            ),
),
    // Container(
    // child: Image.asset(
    //           'assets/images/a.jpg',
    //           height: 150,
    //           width: 150,
    //         ),
    // ),
    // Container(
    // child: Text("${L.elementAt(0).name}"),
    // ),
    // Container(
    // child: Text("${L.elementAt(0).email}"),
    // ),
      ],
    ),
  );
  }
}