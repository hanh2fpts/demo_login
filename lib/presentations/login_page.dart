import 'package:demo_login/bloc/login_bloc.dart';
import 'package:demo_login/presentations/overview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController usernameController;
  late final TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();

    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade100,
        body: BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () => const CircularProgressIndicator(),
                loginSuccess: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OverviewPage(),
                    )),
              );
            },
            builder: (context, state) => state.when(
                initial: () => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Ten dang nhap:'),
                          TextField(
                            controller: usernameController,
                            decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text('Mat khau:'),
                          TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            height: 40,
                            width: 200,
                            child: ElevatedButton(
                                onPressed: () => context.read<LoginBloc>().add(LoginEvent.logined(
                                    userName: usernameController.text,
                                    passWorld: passwordController.text)),
                                child: const Text('Dang nhap')),
                          )
                        ],
                      ),
                    ),
                loading: () => const Center(child: CircularProgressIndicator()),
                loginSuccess: () => Container())));
  }
}
