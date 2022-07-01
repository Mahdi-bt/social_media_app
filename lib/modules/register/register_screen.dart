import 'package:flutter/material.dart';
import 'package:social_media_app/shared/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = '/register';

  RegisterScreen({Key? key}) : super(key: key);
  static Route route() => MaterialPageRoute(
      builder: (_) => RegisterScreen(),
      settings: const RouteSettings(name: routeName));

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 25,
        ),
        child: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Let\'s Get Started!',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 40,
                      ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Create an account to Our Social Media app to get all features',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                ),
                const SizedBox(
                  height: 50,
                ),
                buildFormField(
                  controller: _nameController,
                  hintText: 'Please Enter your full Name',
                  prefixIcon: Icons.person,
                ),
                const SizedBox(
                  height: 25,
                ),
                buildFormField(
                  controller: _emailController,
                  hintText: 'Please Enter your Email',
                  prefixIcon: Icons.mail,
                ),
                const SizedBox(
                  height: 25,
                ),
                buildFormField(
                  controller: _phoneController,
                  hintText: 'Please Enter your Phone Number',
                  prefixIcon: Icons.phone,
                ),
                const SizedBox(
                  height: 25,
                ),
                buildFormField(
                  controller: _passwordController,
                  hintText: 'Please Enter your password',
                  prefixIcon: Icons.lock,
                ),
                const SizedBox(
                  height: 25,
                ),
                buildFormField(
                  controller: _repeatPasswordController,
                  hintText: 'Please Confirm your Password',
                  prefixIcon: Icons.lock,
                ),
                const SizedBox(
                  height: 50,
                ),
                customButton(
                    borderRadius: 28,
                    height: 55,
                    width: 200,
                    colors: Colors.blue,
                    text: 'CREATE',
                    function: () {}),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(
                        'Login Here',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.lightBlue,
                            ),
                      ),
                    )
                  ],
                ),
              ]),
        ),
      )),
    );
  }
}
