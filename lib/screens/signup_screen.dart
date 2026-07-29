import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Image.asset(
                'assets/app_logo.png',
                fit: BoxFit.contain,
                width: double.infinity,
                height: 100,
              ),
              SizedBox(height: 27),
              Text(
                'Welcome Back',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Please enter your details to continue',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 28),
              Text('Name'),
              SizedBox(height: 10),
              CustomTextField(
                controller: _nameController,
                hintText: 'Enter your name ',
              ),
              SizedBox(height: 20),
              Text('Email'),
              SizedBox(height: 10),
              CustomTextField(
                controller: _emailController,
                hintText: 'Enter your email',
              ),
              SizedBox(height: 20),
              Text('Password'),
              SizedBox(height: 10),
              CustomTextField(
                hintText: 'Please enter your password',
                isPassword: true,
              ),
              // TextFormField(
              //   decoration: InputDecoration(
              //     hintText: 'Please enter your password',
              //     hintStyle: TextStyle(color: Color(0xff8897Ad)),
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(8),
              //       borderSide: BorderSide(color: Color(0xff8897Ad)),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(8),
              //       borderSide: BorderSide(color: Color(0xff1d4ae9)),
              //     ),
              //     errorBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(8),
              //       borderSide: BorderSide(color: Colors.red),
              //     ),
              //     focusedErrorBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(8),
              //       borderSide: BorderSide(color: Colors.red),
              //     ),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(8),
              //       borderSide: BorderSide(color: Color(0xff8897Ad)),
              //     ),
              //   ),
              // ),
              SizedBox(height: 20),
              Text('Confirm Password'),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Confirm your password',
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
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 40,
                  child: Center(
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
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
              SizedBox(height: 24),
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
    );
  }
}

class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.isPassword = false,
  });
  final TextEditingController? controller;
  final String? hintText;
  final bool isPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hidePassword,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() => hidePassword = !hidePassword);
                },
                child: Icon(Icons.visibility_off),
              )
            : Icon(Icons.visibility),
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
      validator: (name) {
        if (name!.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
    );
  }
}
