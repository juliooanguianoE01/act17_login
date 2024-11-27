import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Flutter',
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Flutter'),
      ),
      body: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1518815068914-038920b6f0c6?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D'),
      fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Etiqueta(), 
          User(), 
          Password(), 
          Bottom(),
          ],)
    );
  }
}

Widget Etiqueta(){
  return Container(child: Center(child: Text('SING IN', style: TextStyle(fontSize: 35.0, color: Colors.white),),),);
}

Widget User(){
  return Container(padding: EdgeInsets.symmetric(horizontal: 300.0) ,child: TextField(decoration: InputDecoration
  (hintText: "User", fillColor: Colors.white, filled: true ),));
}

Widget Password(){
  return Container(padding: EdgeInsets.symmetric(horizontal: 300.0, vertical: 20.0) ,child: TextField(obscureText: true ,decoration: InputDecoration
  (hintText: "Password", fillColor: Colors.white, filled: true ),));
}

Widget Bottom(){
  return ElevatedButton(
  onPressed: () {},
  child: Text(
  'Entrar', 
  style: TextStyle(fontSize: 20.0, color: Colors.blue),
    ),
  );
}