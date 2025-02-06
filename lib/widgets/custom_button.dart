import 'package:flutter/material.dart';
import 'package:notes_app_practice/widgets/constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 28, width: 28, child: CircularProgressIndicator())
              : Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
        ),
      ),
    );
  }
}
