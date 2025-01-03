import 'package:character_creation_app/models/vocation.dart';
import 'package:character_creation_app/shared/styled_text.dart';
import 'package:character_creation_app/theme.dart';
import 'package:flutter/material.dart';

class VocationCard extends StatelessWidget {
  const VocationCard(
      {super.key,
      required this.vocation,
      required this.onTap,
      required this.selected});

  final Vocation vocation;
  final void Function(Vocation) onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(vocation);
        print(vocation);
      },
      child: Card(
        color: selected ? AppColors.secondaryColor : Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              // vocation image
              Image.asset(
                'assets/img/vocations/${vocation.image}',
                width: 80,
                colorBlendMode: BlendMode.color,
                color: !selected ? Colors.black.withOpacity(0.8) : Colors.transparent,
              ),

              const SizedBox(
                width: 10,
              ),

              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // name of vocation
                  StyledHeading(vocation.title),

                  // vocation description
                  StyledText(vocation.description),
                ],
              ))

              //
            ],
          ),
        ),
      ),
    );
  }
}
