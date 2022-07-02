import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Coding(title: 'TRANNING',),
      '/second': (context) => Second(),
      '/third': (context) => const Third(),
    },
  )); //MaterialApp
}


// function to trigger build when the app is run


class Coding extends StatelessWidget {
  final String title;

  const Coding({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton (onPressed: () {
          Navigator.pop(context);
        },
          child: const Text("Get Started"),
        ),

      ),
    );

  }
}






class Second extends StatelessWidget  {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Student Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    // ignore: avoid_print
                    print(nameController.text);
                    // ignore: avoid_print
                    print(passwordController.text);
                  },
                )),
            Row(
              // ignore: sort_child_properties_last
                children: <Widget>[
                  const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      //signup screen
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center
            ),
          ],
        ));
  }
}





class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  set dateToday(DateTime dateToday) {}

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(body: Column(
      // ignore: prefer_const_literals_to_create_immutables
        children: [
    Center(child: Text("HI"),
    ),
    Image(image: NetworkImage("https://png.pngtree.com/png-vector/20190413/ourlarge/pngtree-elegant-clean-certificate-vector-template-png-image_936319.jpgl")),
    Text("You have successfully completed Hybride Mobile APP developement Course"),

    Text("INSTRUCTOR NAME"
    "Pankaj Kapoor"),
    DateTime dateToday = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day) ;
    ],
    ),


    ); // Scaffold
  }
}
