import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:tim_task/app/constant/constants.dart';

class CustomBackButton extends StatelessWidget {
  final String? title;
  const CustomBackButton({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return GrockContainer(
      onTap: () => Navigator.pop(context),
      padding: [20, 8].horizontalAndVerticalP,
      decoration: BoxDecoration(
        color: context.isDarkTheme ? Colors.black : Colors.white,
        borderRadius: kBackButtonRadius.borderRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_back,
              color: context.isDarkTheme ? Colors.white : Colors.black),
          if (title != null) ...{
            16.width,
            Text(
              title!,
              style: context.bodyMedium.copyWith(
                color: context.isDarkTheme ? Colors.white : Colors.black,
              ),
            ),
          }
        ],
      ),
    );
  }
}
