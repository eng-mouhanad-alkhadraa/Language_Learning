import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/animals_page.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: 
              const SystemUiOverlayStyle(statusBarColor: Color(0xff0A1E29)),
          backgroundColor: const Color(0xff0A1E29),
          elevation: 0,
          title: const Text(
            'English for kids',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backgrounds/bg.jpg'),
                fit: BoxFit.cover),
          ),
          child: Scrollbar(
            child: ListView(
              children: [
                Category(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) {
                          return const NumbersPage(); 
                        },
                      ),
                    );
                  },
                  text: 'Numbers',
                  color: const Color(0xffCAFB0A),
                ),
                Category(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) {
                          return const FamilyMembersPage();
                        },
                      ),
                    );
                  },
                  text: 'FamilyMembers',
                  color: const Color(0xffCAFB0A),
                ),
                Category(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) {
                          return const ColorsPage();
                        },
                      ),
                    );
                  },
                  text: 'colors',
                  color: const Color(0xffCAFB0A),
                ),
                
                   Category(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) {
                          return const AnimalsPage();
                        },
                      ),
                    );
                  },
                  text: 'animals',
                  color: const Color(0xffCAFB0A),
                ),
                Category(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) {
                          return const PhrasePage();
                        },
                      ),
                    );
                  },
                  text: 'phrases',
                  color: const Color(0xffCAFB0A),
                ),
         
              ],
            ),
          ),
        ),
      ),
    );
  }
}
