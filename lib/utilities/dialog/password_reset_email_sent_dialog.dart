import 'package:flutter/widgets.dart';
import 'package:mynotes/utilities/dialog/generic_dialog.dart';

Future<void> showPasswordResetEmailSentDialog(BuildContext context) {
  return showGenericDialog<void>(
    context: context,
    title: 'Password Reset',
    content:
        'The password reset link is sent to your email id. Please check your email for more information!',
    optionsBuilder: () => {
      'OK': null,
    },
  );
}
