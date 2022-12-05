import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'logn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
       appBar:AppBar(
         leading: Icon(Icons.home),
         centerTitle: true,
         title: Text('HomeScreen'),
         actions: [
           ElevatedButton(onPressed: (){
             Navigator.pop(context,MaterialPageRoute(
                 builder: (context)=>Login()),);

           }, child: Text('Exet'))
         ],
       ),


       body: Center(
         child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           Consumer<Solary>(


           builder: (contex, cont, child) =>
           Text(
           '${cont.solary}'),


           ),

         ],


         ),
       ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           Provider.of<Solary>(context, listen: false).chingSolary();

         }, child: Icon(Icons.add),),

     );


    //      Center(
    //
    //      child: Column(
    //
    // mainAxisAlignment: MainAxisAlignment.center,
    // children: <Widget>[
    // const Text(
    // 'CONSUMER',
    // ),


  //            ElevatedButton(
  // onPressed: (){
  //
  // },
  // // child: const Icon(Icons.add),

}
}
class Solary with ChangeNotifier{
  int solary=0;
  chingSolary(){
    solary=solary+100;
        notifyListeners();
  }
}