import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginFailure) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.message)));
              }

              if (state is LoginSuccess) {
                // Navigate or show success
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Welcome ${state.user.username}')),
                );
              }
            },
            builder: (context, state) {
              final isLoading = state is LoginLoading;

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LoginForm(
                    isLoading: isLoading,
                    onSubmit: (u, p) => context.read<LoginBloc>().add(
                      LoginSubmitted(username: u, password: p),
                    ),
                  ),
                  const SizedBox(height: 16),
                  if (state is LoginSuccess)
                    Text('Logged in as: ${state.user.email}'),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
