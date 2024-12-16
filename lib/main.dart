import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? selectedOption; // Holds the currently selected value
  bool isBaccalaureatChecked = false;
  bool isBTSChecked = false;
  bool isLicenceChecked = false;
  bool isMasterChecked = false;
  bool isDoctoratChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Picture
              ClipOval(
                child: Image.asset(
                  "assets/images/profile_user.jpg",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
          
              // Radio Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                        value: 'Ajouter',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                      const Text('Ajouter'),
                    
                  Radio(
                        value: 'Modifier',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                      const Text('Ajouter'),
                    
                    Radio(
                        value: 'Supprimer',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                      const Text('Ajouter'),
          
                    
                  ],
                ),
          
              // Text inputs
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Nom'
                ),
              ),

              const TextField(
                decoration: InputDecoration(
                  labelText: 'Presnom'
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Adresse'
                ),
              ),

              // Checkbox buttons
              Row(
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(

          children: [
            Checkbox(
              value: isBaccalaureatChecked,
              onChanged: (value) {
                setState(() {
                  isBaccalaureatChecked = value ?? false;
                });
              },
            ),
            const Text('Baccalaureat'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isBTSChecked,
              onChanged: (value) {
                setState(() {
                  isBTSChecked = value ?? false;
                });
              },
            ),
            const Text('BTS'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isLicenceChecked,
              onChanged: (value) {
                setState(() {
                  isLicenceChecked = value ?? false;
                });
              },
            ),
            const Text('Licence'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isMasterChecked,
              onChanged: (value) {
                setState(() {
                  isMasterChecked = value ?? false;
                });
              },
            ),
            const Text('Master'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: isDoctoratChecked,
              onChanged: (value) {
                setState(() {
                  isDoctoratChecked = value ?? false;
                });
              },
            ),
            const Text('Doctorat'),
          ],
        ),
      ],
    ),

     Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
       children: [Container(
        padding: const EdgeInsets.all(30),
        color: Colors.blue,
        child: TextButton(
          onPressed: (){}, 
          child: const Text('CONFIRMER',style: TextStyle(
            color: Colors.white,
            fontSize: 20
            
          ),
          ),
          ),
           ),
           const Text('Resultat',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
           ]
     ),
  ],
)

              
            ],
          ),
        ),
      ),
    );
  }
}
