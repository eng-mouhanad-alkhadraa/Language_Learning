import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toku/models/number.dart';
import 'package:toku/components/list_item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Item> familyMembers = const [
    Item(
        sound: 'zero.mp3',
        image: 'assets/images/numbers/zero.png',
        ArName: 'صفر',
        enName: 'zero'),
    Item(
        sound: 'One.mp3',
        image: 'assets/images/numbers/One.png',
        ArName: 'واحد',
        enName: 'One'),
    Item(
        sound: 'two.mp3',
        image: 'assets/images/numbers/two.png',
        ArName: 'اثنان',
        enName: 'two'),
    Item(
        sound: 'three.mp3',
        image: 'assets/images/numbers/three.png',
        ArName: 'ثلاثة',
        enName: 'three'),
    Item(
        sound: 'four.mp3',
        image: 'assets/images/numbers/four.png',
        ArName: 'أربعة',
        enName: 'four'),
    Item(
        sound: 'five.mp3',
        image: 'assets/images/numbers/five.png',
        ArName: 'خمسة',
        enName: 'five'),
    Item(
        sound: 'six.mp3',
        image: 'assets/images/numbers/six.png',
        ArName: 'ستة',
        enName: 'six'),
    Item(
        sound: 'Seven.mp3',
        image: 'assets/images/numbers/Seven.png',
        ArName: 'سبعة',
        enName: 'Seven'),
    Item(
        sound: 'eight.mp3',
        image: 'assets/images/numbers/eight.png',
        ArName: 'ثمانية ',
        enName: 'eight'),
    Item(
        sound: 'nine.mp3',
        image: 'assets/images/numbers/nine.png',
        ArName: 'تسعة',
        enName: 'nine'),
    Item(
        sound: 'ten.mp3',
        image: 'assets/images/numbers/ten.png',
        ArName: 'عشرة',
        enName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Numbers'),
          backgroundColor: Color(0xff0A1E29),
        ),
        body: Scrollbar(
          child: ListView.builder(
            itemCount: familyMembers.length,
            itemBuilder: (context, index) {
              return ListItem(
                itemType: 'numbers',
                number: familyMembers[index],
                color: Color(0xff0A1E29),
              );
            },
          ),
        ),
      ),
    );
  }
}
