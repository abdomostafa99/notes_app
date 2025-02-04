import 'package:flutter/material.dart';

class SearchRowBar extends StatelessWidget {
  const SearchRowBar({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Container(
          height: 47,
          width: 47,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(16),
          ),
          child: icon,
        )
      ],
    );
  }
}
