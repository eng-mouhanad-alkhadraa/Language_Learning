import 'package:flutter/material.dart';
import 'package:toku/components/phrase_item.dart';
import 'package:toku/models/number.dart';

class PhrasePage extends StatelessWidget {
  const PhrasePage({Key? key}) : super(key: key);

  final List<Item> phrase = const [
    Item(
        sound: 'dont_forget_to_subscribe.mp3',
        ArName: 'لا تنسى الاشتراك',
        enName: 'dont forget to subscribe'),
    Item(
        sound: 'i_love_programming.mp3',
        ArName: 'أنا أحب البرمجة',
        enName: 'i love programming'),
    Item(
        sound: 'what_is_your_name.mp3',
        ArName: 'ما اسمك؟',
        enName: 'what is your name?'),
    Item(
        sound: 'Where_are_you_from.mp3',
        ArName: 'من أين أنت؟',
        enName: 'Where are you from?'),
    Item(
        sound: 'How_old_are_you.mp3',
        ArName: 'كم عمرك؟',
        enName: 'How old are you?'),
    Item(
        sound: 'What_is_your_nationality.mp3',
        ArName: 'ما هيه جنسيتك؟',
        enName: 'What is your nationality?'),
    Item(
        sound: 'What_is _your_favorite_hobby.mp3',
        ArName: 'ما هى هوايتك المفضلة؟',
        enName: 'What is your favorite hobby?'),
    Item(
        sound: 'What_do_you_do.mp3',
        ArName: 'ماذا تفعل؟',
        enName: 'What do you do?'),
    Item(
        sound: 'are_you_coming.mp3',
        ArName: 'هل انت قادم؟',
        enName: 'are you coming?'),
    Item(
        sound: 'where_are_you_going.mp3',
        ArName: 'إلى أين تذهب؟',
        enName: 'where are you going?'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff0A1E29),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: phrase.length,
          itemBuilder: (context, index) {
            return PhraseItem(
              phrase: phrase[index],
              color: const Color(0xff0A1E29),
              itemType: 'phrases', 
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
