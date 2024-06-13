import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes/services/auth/bloc/auth_bloc.dart';
import 'package:mynotes/services/auth/bloc/auth_event.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify with Email'),
      ),
      body: Column(
        children: [
          const Text(
              'We have already sent you the verification email. Please open it to verify your email'),
          const Text(
              "If you haven't received the verification email yet, click the button below."),
          TextButton(
            onPressed: () {
              context.read<AuthBloc>().add(
                    const AuthEventSendVerification(),
                  );
            },
            child: const Text(
              'Send Email Veification Link',
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<AuthBloc>().add(
                    const AuthEventLogOut(),
                  );
            },
            child: const Text(
              'Restart',
            ),
          ),
        ],
      ),
    );
  }
}
