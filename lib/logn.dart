import 'package:flutter/material.dart';
import 'home_screen.dart';
class Login extends StatefulWidget {
  const Login ({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Container(


            ),

            ElevatedButton(onPressed:(){
              Navigator.push(context,MaterialPageRoute(
                  builder: (context)=>HomeScreen()),);
            },
                child: Text('login')),
          ],
        ),
      );
  }
}
