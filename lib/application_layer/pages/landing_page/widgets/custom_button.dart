import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onTap,
    this.text,
  }) : super(key: key);

  final Function()? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return InkResponse(
      onTap: onTap?.call(),
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            color: onTap == null
                ? themeData.colorScheme.tertiary
                : themeData.colorScheme.secondary,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              text ?? "",
              style: themeData.textTheme.headline1?.copyWith(
                  color: onTap == null ? Colors.grey : Colors.blueAccent),
            ),
          ),
        ),
      ),
    );
  }
}
