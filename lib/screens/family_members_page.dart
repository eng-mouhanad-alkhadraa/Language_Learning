import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<Item> numbers = const [
    Item(
        sound: 'grandfather.mp3',
        image: 'assets/images/family_members/grandfather.jpg',
        ArName: 'جد',
        enName: 'grandfather'),
    Item(
        sound: 'grandmother.mp3',
        image: 'assets/images/family_members/grandmother.jpg',
        ArName: 'جدة',
        enName: 'grandmother'),
    Item(
        sound: 'father.mp3',
        image: 'assets/images/family_members/father.jpg',
        ArName: 'أب',
        enName: 'father'),
    Item(
        sound: 'Mother.mp3',
        image: 'assets/images/family_members/Mother.jpg',
        ArName: 'الأم',
        enName: 'Mother'),
    Item(
        sound: 'sister.mp3',
        image: 'assets/images/family_members/sister.jpg',
        ArName: 'أخت',
        enName: 'sister'),
    Item(
        sound: 'brother.mp3',
        image: 'assets/images/family_members/brother.jpg',
        ArName: 'أخ',
        enName: 'brother'),
    Item(
        sound: 'son.mp3',
        image: 'assets/images/family_members/son.jpg',
        ArName: 'ابن',
        enName: 'son'),
    Item(
        sound: 'daughter.mp3',
        image: 'assets/images/family_members/daughter.jpg',
        ArName: 'ابنة',
        enName: 'daughter'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff0A1E29),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListItem(
              number: numbers[index],
              color: const Color(0xff0A1E29),
              itemType: 'family_members', 
            );
          },
        ),
      ),
    );
  }
}
