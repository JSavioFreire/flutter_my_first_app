import 'package:flutter/material.dart';

class Family extends StatelessWidget {
  final String name;
  final int idade;
  final String nascimento;
  final String caminhoimg;

  const Family(this.name, this.idade, this.nascimento, this.caminhoimg,
      {super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(20),
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/$caminhoimg'),
              radius: 50,
              backgroundColor: Colors.red,
            ),
            Container(
                margin: const EdgeInsets.only(left: 20),
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: $name',
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text('Idade: $idade', style: const TextStyle(fontSize: 18)),
                    Text('Nascimento: $nascimento',
                        style: const TextStyle(fontSize: 18))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
