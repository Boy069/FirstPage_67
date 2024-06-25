import 'package:flutter/material.dart';
import 'package:login67/FirstPage.dart';

class MajorLanguage extends StatefulWidget {
  const MajorLanguage({super.key});

  @override
  State<MajorLanguage> createState() => _MajorLanguageState();
}

class _MajorLanguageState extends State<MajorLanguage> {
  String selectedCourse = ''; // เก็บค่าว่าเลือก Course ไหน

  String selectedLanguage = ''; // เก็บค่าว่าเลือกภาษาไหน
  bool agreedToTerms = false; // เก็บสถานะการเลือก Agree Terms

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        children: <Widget>[
          Text("Major"),

          SizedBox(height: 16,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedCourse = 'Computer Science';
                  });
                },
                child: Text('Computer Science'),
                ),
        
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedCourse = 'Information Technology';
                  });
                },
                child: Text('information Technology'),
                ),
              ],
            ),

            SizedBox(height: 12,),

            Text(
              'Major: $selectedCourse',
              style: TextStyle(fontSize: 18.0),
            ),

            SizedBox(height: 20,),

            Column(
              children: [
                Text("Language"),
                ListTile(
                  title: Text('Thai'),
                  leading: Radio(
                    value: 'Thai',
                    groupValue: selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        selectedLanguage = value.toString();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('English'),
                  leading: Radio(
                    value: 'English',
                    groupValue: selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        selectedLanguage = value.toString();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Chinese'),
                  leading: Radio(
                    value: 'Chinese',
                    groupValue: selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        selectedLanguage = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: agreedToTerms,
                  onChanged: (value) {
                    setState(() {
                      agreedToTerms = value!;
                    });
                  },
                ),
                Text('Agree Condition Terms'),
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second screen using Navigator
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              },
              child: Text('Register'),
            ),
        ],
      ),
    );
  }
}