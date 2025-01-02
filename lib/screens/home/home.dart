import 'package:character_creation_app/models/character.dart';
import 'package:character_creation_app/screens/home/character_card.dart';
import 'package:character_creation_app/shared/styled_button.dart';
import 'package:character_creation_app/shared/styled_text.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle(
          'Your Characters',
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: characters.length,
                itemBuilder: (_, index) {
                  return CharacterCard(characters[index]);
                },
              ),
            ),
            StyledButton(
              onPressed: () {},
              child: StyledHeading(
                'Create New',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

