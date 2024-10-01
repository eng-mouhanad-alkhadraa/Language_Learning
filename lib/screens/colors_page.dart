import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<Item> colors = const [
    Item(
        sound: 'blue.mp3',
        image: 'assets/images/colors/blue.jpg',
        ArName: 'أزرق',
        enName: 'blue'),
    Item(
        sound: 'red.mp3',
        image: 'assets/images/colors/red.jpg',
        ArName: 'أحمر',
        enName: 'red'),
    Item(
        sound: 'green.mp3',
        image: 'assets/images/colors/green.jpg',
        ArName: 'أخضر',
        enName: 'green'),
    Item(
        sound: 'black.mp3',
        image: 'assets/images/colors/black.jpg',
        ArName: 'أسود',
        enName: 'black'),
    Item(
        sound: 'grey.mp3',
        image: 'assets/images/colors/grey.jpg',
        ArName: 'رمادي',
        enName: 'grey'),
    Item(
        sound: 'purple.mp3',
        image: 'assets/images/colors/purple.jpg',
        ArName: 'أرجواني',
        enName: 'purple'),
    Item(
        sound: 'Pink.mp3',
        image: 'assets/images/colors/Pink.png',
        ArName: 'زهري',
        enName: 'Pink'),
    Item(
        sound: 'yellow.mp3',
        image: 'assets/images/colors/yellow.jpg',
        ArName: 'أصفر',
        enName: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('colors'),
        backgroundColor: Color(0xff0A1E29),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ListItem(
              number: colors[index],
              color: Color(0xff0A1E29),
              itemType: 'colors', 
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
