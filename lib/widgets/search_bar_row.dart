import 'package:flutter/material.dart';

class SearchRowBar extends StatelessWidget {
  const SearchRowBar({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
  });

  final String text;
  final Icon icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
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
          child: IconButton(
            onPressed: onPressed,
            icon: icon,
            iconSize: 28,
          ),
        )
      ],
    );
  }
}
