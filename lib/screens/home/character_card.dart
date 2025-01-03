import 'package:character_creation_app/models/character.dart';
import 'package:character_creation_app/shared/styled_text.dart';
import 'package:character_creation_app/theme.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Image.asset(
              'assets/img/vocations/${character.vocation.image}',
              width: 80,
            ),

            const SizedBox(width:20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              StyledHeading(character.name),
              StyledText(character.vocation.title)
            ],),
            
            const Expanded(child: SizedBox()),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
