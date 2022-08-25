import 'package:database1/providers/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:database1/screens/form_screen.dart';
import 'package:provider/provider.dart';

import 'models/Transaction.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context){
          return TransactionProvider();
        }),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:  MyHomePage(title: 'แอพบัญชี'),
      ),
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

        body: Consumer(
          builder: (context,TransactionProvider provider, Widget? child){
                        return ListView.builder(
              itemCount: provider.transactions.length,
              itemBuilder: (context, int index){
                Transaction data = provider.transactions[index];
          return Card(
            elevation: 5 ,
            margin: const EdgeInsets.all(10.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 50,
                child: FittedBox(
                child: Text("200"),
                ),
                ),
              title: Text("รายการ"),
              subtitle: Text("เมนูของ"),
            ),
          );
        });
          },
        ));
  }
}
