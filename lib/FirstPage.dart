import 'package:flutter/material.dart';
import 'package:login67/MajorLanguage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FirstPage> {
  double _weight = 50.0;
  double _height = 150.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Login"),
      ),
      body:  Center( //const ค่าคงที่
        child: Column(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUWJAUHJwgXFNOl2hf5hxssmnOEtEPwxzBHQ&s'),
            ),
            const SizedBox(height: 16),

            Text("Register"),

            const SizedBox(height: 16),
            
             TextFormField(
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 164, 218, 241),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.person),
                labelText: 'name',
              ),
            ),

            const SizedBox(height: 16), 

            TextFormField(
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 164, 218, 241),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.account_circle_outlined),
                labelText: 'username',
              ),
            ),

            const SizedBox(height: 16), 

             TextFormField(
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 164, 218, 241),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.key),
                labelText: 'password',
              ),
            ),

            const SizedBox(height: 16,),
            
            Text("Weight"),
            Slider(
              value: _weight,
              max: 150,
              divisions: 120,
              label: _weight.toStringAsFixed(1),
              onChanged: (double value) {

                setState( () {
                  _weight = value;
                  });
              },
            ),

            const SizedBox(height: 12,),

            Text("Height"),
            Slider(
              value: _height,
              max: 250,
              divisions: 150,
              label: _height.toStringAsFixed(1),
              onChanged: (double value) {

                setState( () {
                  _height = value;
                  });
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second screen using Navigator
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MajorLanguage()),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}