import 'package:flutter/material.dart';

import '../../shared/widgets/InputFormField.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  LoginScreen({Key? key}) : super(key: key);
  static Route route() => MaterialPageRoute(
      builder: (_) => LoginScreen(),
      settings: const RouteSettings(name: routeName));

  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login_image.jpg',
                  height: 300,
                  width: 300,
                ),
                Text(
                  'Welcome back!',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 38,
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Login in to your existant account of Went App!',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        fontSize: 14,
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                buildFormField(
                  controller: _emailController,
                  hintText: 'Please Enter your Email Adress',
                  prefixIcon: Icons.person,
                ),
                const SizedBox(
                  height: 15,
                ),
                buildFormField(
                  controller: _emailController,
                  hintText: 'Please Enter your password',
                  prefixIcon: Icons.lock,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.blue),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 55,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Center(
                        child: Text('LOG IN',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.white))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
