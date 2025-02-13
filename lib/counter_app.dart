import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
    int result = 0;
    void increment(){
      setState(() {
        result++;
      });

    }
    void reset(){
      setState(() {
        result =0;
      });
    }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Counter app"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is a Simple counter app is made for state management practice",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500
            ),),
        
            SizedBox(height: 20),
            Text(result.toString(),style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: increment, child: Icon(Icons.add)),
                SizedBox(width: 10),
                TextButton(onPressed: reset, child: Icon(Icons.replay))
              ],
            )
        
        
        
          ],
        ),
      ),
    );
  }
}