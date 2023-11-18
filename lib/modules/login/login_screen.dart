import 'package:flutter/material.dart';
import 'package:learn_course/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          // SingleChildScrollView Widget to avoid keyboard overflow on screen
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                /* [ defaultFormField ] Widget imported from Components Folder */
                /* Email Controller */
                defaultFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  label: 'Email Address',
                  prefix: Icons.email,
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'Email must not be empty!';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                /* Password Controller */
                defaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  label: 'Password',
                  isPassword: isPassword,
                  prefix: Icons.lock,
                  suffix: isPassword ? Icons.visibility_off : Icons.visibility,
                  suffixPressed: ()
                  {
                    setState(()
                    {

                      isPassword = !isPassword ;

                    });
                  },
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'Passowrd must not be empty!';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                /* [ defaultButton ] Widget imported from Components Folder  */
                defaultButtton(
                  text: 'login',
                  function: () {
                    if (formKey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                    }
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an acount?'),
                    TextButton(
                        onPressed: () {}, child: const Text('Register Now')),
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
