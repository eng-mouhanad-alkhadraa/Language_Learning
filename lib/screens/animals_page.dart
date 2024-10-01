import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/number.dart';

class AnimalsPage extends StatelessWidget {
  const AnimalsPage({Key? key}) : super(key: key);

  final List<Item> animals = const [
    Item(
        sound: 'Lion.mp3',
        image: 'assets/images/animals/lion.jpg',
        ArName: 'أسد',
        enName: 'Lion'),
    Item(
        sound: 'whale.mp3',
        image: 'assets/images/animals/whale.jpg',
        ArName: 'حوت',
        enName: 'whale'),
    Item(
        sound: 'tiger.mp3',
        image: 'assets/images/animals/tiger.jpg',
        ArName: 'نمر',
        enName: 'tiger'),
    Item(
        sound: 'rabbit.mp3',
        image: 'assets/images/animals/rabbit.jpg',
        ArName: 'أرنب',
        enName: 'rabbit'),
    Item(
        sound: 'turtle.mp3',
        image: 'assets/images/animals/turtle.jpg',
        ArName: 'سلحفاة',
        enName: 'turtle'),
    Item(
        sound: 'elephant.mp3',
        image: 'assets/images/animals/elephant.jpg',
        ArName: 'فيل',
        enName: 'elephant'),
    Item(
        sound: 'crocodile.mp3',
        image: 'assets/images/animals/crocodile.jpg',
        ArName: 'تمساح',
        enName: 'crocodile'),
    Item(
        sound: 'cat.mp3',
        image: 'assets/images/animals/cat.jpg',
        ArName: 'قطة',
        enName: 'cat'),
    Item(
        sound: 'dog.mp3',
        image: 'assets/images/animals/dog.jpeg',
        ArName: 'كلب',
        enName: 'dog'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animals'),
        backgroundColor: const Color(0xff0A1E29),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: animals.length,
          itemBuilder: (context, index) {
            return ListItem(
              number: animals[index],
              color: const Color(0xff0A1E29),
              itemType: 'animals', 
            );
          },
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return const Placeholder();
}
