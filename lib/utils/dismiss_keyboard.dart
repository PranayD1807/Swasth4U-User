// The DismissKeybaord widget (it's reusable)
import 'package:flutter/material.dart';

class DismissKeyboard extends StatelessWidget {
  /// Use this to dismiss keyboard when tapped outside the soft keyboard
  final Widget child;
  const DismissKeyboard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: child,
    );
  }
}
