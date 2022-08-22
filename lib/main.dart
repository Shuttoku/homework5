
import 'package:flutter/material.dart';
import 'package:database1/screens/form_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  MyHomePage(title: 'แอพบัญชี'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FormScreen();
                }));

              }
            )
          ],
        ),
        body: ListView.builder(itemCount: 4,itemBuilder: (context,int index){
          return Card(
            elevation: 5,
            margin: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Text("เมนู"),
            ),
          );
        }));
  }
}
