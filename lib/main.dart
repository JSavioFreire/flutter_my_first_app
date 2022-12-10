import 'package:flutter/material.dart';
import 'package:flutter_my_first_app/class_family/class_family.dart';
import 'package:flutter_my_first_app/family/family.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

var pessoas1 = FamilyClass('Savio', 24, '02/11/1998', 'savio.jpg');
var pessoas2 = FamilyClass('Ana', 24, '02/04/1998', 'ana.jpg');
var pessoas3 = FamilyClass('Bolt', 9, '01/02/2013', 'bolt.jpeg');
var pessoas4 = FamilyClass('Jesse', 4, '20/01/2018', 'jesse.jpg');
var pessoas5 = FamilyClass('Daenerys', 5, '05/07/2017', 'daenerys.jpg');

List pessoa = [pessoas1, pessoas2, pessoas3, pessoas4, pessoas5];

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Minha Familia'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            ...pessoa.map(
              (el) => Family(el.name, el.idade, el.nascimento, el.caminhoimg),
            )
          ]),
        ),
      ),
    );
  }
}
