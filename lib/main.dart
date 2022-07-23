import 'package:expence_tracker/expenses_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracker',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Expense Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {






  @override
  Widget build(BuildContext context) {
 double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
      children:[

        Padding(
         padding: EdgeInsets.only(top: 20),
         child: Column(
           children: const [
             Text("4000 taka",style: TextStyle(fontSize: 30),),
             Text("Amount left",style: TextStyle(fontSize: 20),),
           ],
         ),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(height: screenHeight*.2,width: double.infinity,decoration: BoxDecoration(color: Colors.cyan,borderRadius:BorderRadius.circular(20))),
       ),

        Container(
          height: screenHeight*.5,
        child: ListView(
          children: listExpense.map((e) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(child: ListTile(leading: Icon(e.icon,size: 28,),title: Text(e.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),subtitle: Text("${e.expense} \$"),trailing: Text(e.dateTime.toString()),),elevation: 20,),
          )).toList(),

        ),
      ),


      ]
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: modalSheet,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }



  void modalSheet(){

    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

              ],
            ),
          ),
        );
      },
    );
  }
}

