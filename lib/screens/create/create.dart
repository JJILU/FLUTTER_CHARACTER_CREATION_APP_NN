import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:character_creation_app/shared/styled_text.dart';
import 'package:character_creation_app/theme.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle(
          'Character Creation',
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            // welcome message
            Center(
              child: Icon(
                Icons.code,
                color: AppColors.primaryColor,
              ),
            ),

            Center(
              child: StyledHeading('Welcome, new player.'),
            ),

            Center(
              child: StyledText('Create a name & slogan for your character.'),
            ),

            SizedBox(
              height: 30,
            ),

            // input for name & slogan
            TextField(
              style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_2),
                  label: StyledText('Character name')),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.chat),
                  label: StyledText('Character slogan')),
            )
          ],
        ),
      ),
    );
  }
}
