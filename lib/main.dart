import 'package:flutter/material.dart';

void main() {
  runApp(PlantPulseApp());
}

class PlantPulseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PlantPulse',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PlantCounterScreen(),
    );
  }
}

class PlantCounterScreen extends StatefulWidget {
  @override
  _PlantCounterScreenState createState() => _PlantCounterScreenState();
}

class _PlantCounterScreenState extends State<PlantCounterScreen> {
  int plantCount = 0;

  void addPlant() {
    setState(() {
      plantCount++;
    });
  }

  void removePlant() {
    setState(() {
      if (plantCount > 0) {
        plantCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("🌱 PlantPulse Counter Demo"),
      ),
      body: Center(
        child: Text(
          "Plants Tracked: $plantCount",
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: addPlant,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: removePlant,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
