import 'package:flutter/material.dart';

class LoginDivider2 extends StatelessWidget {
  const LoginDivider2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
              thickness: 1.5,
              color: Theme.of(context).colorScheme.primary,
            ),
        ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text('Or Register with',
          style: TextStyle(
           color: Theme.of(context).colorScheme.primary,
         ),
         ),

        ),
        Expanded(
        child: Divider(
        thickness: 1.5,
        color: Theme.of(context).colorScheme.primary,
        ),
        ),
        

      ],
    );
  }
}