import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_ez_ib/home_screen.dart';

import 'logn.dart';
main(){
  runApp(screen());
}

class screen extends StatelessWidget {
  const screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(create: (context)=>Solary(),
      child: MaterialApp(
        home: Login(),
      ),
    );
  }
}


