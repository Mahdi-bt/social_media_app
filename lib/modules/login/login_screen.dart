import 'package:flutter/material.dart';
import 'package:social_media_app/shared/widgets/widgets.dart';

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
                customButton(
                  borderRadius: 28,
                  colors: Colors.lightBlue,
                  height: 55,
                  width: 230,
                  text: 'LOG IN',
                  function: () {
                    print('Typed');
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Or Connect using',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customButton(
                      borderRadius: 15,
                      height: 50,
                      width: 190,
                      colors: Colors.blue,
                      text: 'Facebook',
                      iconPath: 'assets/images/facebook.svg',
                      function: () {},
                    ),
                    customButton(
                      borderRadius: 15,
                      height: 50,
                      width: 190,
                      colors: Colors.redAccent,
                      text: 'Google',
                      iconPath: 'assets/images/google.svg',
                      function: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/register'),
                      child: Text(
                        'Sign Up',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.lightBlue,
                            ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
