import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePassword = true;
  final _emailController = TextEditingController(text: 'anukarki123');
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/app_logo.png',
                  fit: BoxFit.contain,
                  width: double.infinity,
                  height: 200,
                ),
                SizedBox(height: 27),
                Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Today is a new day. It's your day. You shape it. Sign in to start managing your tasks.  ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 40),
                Text('Email'),
                SizedBox(height: 5),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(color: Color(0xff8897Ad)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xff8897Ad)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xff1d4ae9)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xff8897Ad)),
                    ),
                  ),
                  validator: (val) {
                    if (val == null ||
                        val.isEmpty) // also we can use if(_emailController.text.isEmpty)
                        {
                      return "Please enter email";
                    }
                    if (val.length < 7) {
                      return 'Email must be longer than 6 characters';
                    }
                  },
                ),

                SizedBox(height: 20),
                Text('Password'),
                SizedBox(height: 5),
                TextFormField(
                  obscureText: hidePassword, // password hide hunca true garda
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() => hidePassword = !hidePassword);
                      },
                      child: Icon(
                        hidePassword ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    hintStyle: TextStyle(color: Color(0xff8897Ad)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xff8897Ad)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xff1d4ae9)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xff8897Ad)),
                    ),
                  ),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Please enter password";
                    }
                    if (val.length < 7) {
                      return 'Password must be longer than 6 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 27),
                GestureDetector(
                  onTap: () async {
                    final everythingisfine =
                        _formKey.currentState?.validate() ?? false;
                    print(everythingisfine);

                    if (everythingisfine) {
                      //proceed to login
                    }
                    // login(email: _emailController.text);

                    // final email = _emailController.text;
                    // print(email);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          // color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                SizedBox(height: 27),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Don't have an account?"),
                    Text(
                      ' Sign Up',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
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
