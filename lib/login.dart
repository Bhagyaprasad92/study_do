import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_do/signUp.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<loginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isViewPassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF47897f),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.contain,
                width: double.infinity,
                // height: double.infinity,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 480,
                decoration: BoxDecoration(
                  color: Color(0xFFf2f2f2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 18),
                    Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        fontSize: 26,
                        color: Color(0xFF47897f),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Your journey is finally here!',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 20),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFd8e8e7),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: TextFormField(
                                  controller: _usernameController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    labelText: 'Username or Email',
                                    labelStyle: GoogleFonts.poppins(
                                      color: Color.fromARGB(255, 92, 112, 109),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your username or email';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFd8e8e7),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: TextFormField(
                                  controller: _passwordController,
                                  keyboardType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    return null;
                                  },
                                  obscureText: isViewPassword,
                                  decoration: InputDecoration(
                                    labelText: 'Enter your password',
                                    labelStyle: GoogleFonts.poppins(
                                      color: Color.fromARGB(255, 92, 112, 109),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100,
                                    ),
                                    suffixIcon: IconButton(
                                      iconSize: 20,
                                      onPressed: () {
                                        setState(() {
                                          isViewPassword = !isViewPassword;
                                        });
                                      },
                                      icon:
                                          isViewPassword
                                              ? Icon(Icons.visibility_off)
                                              : Icon(Icons.visibility),
                                      color: Color.fromARGB(255, 33, 36, 36),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                SizedBox(height: 2),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.poppins(
                                      color: Color.fromARGB(255, 83, 107, 101),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 55,
                                      margin: EdgeInsets.only(top: 30),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(
                                          255,
                                          148,
                                          188,
                                          182,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            // debugPrint(
                                            //   'Logged in successfully!',
                                            // );
                                            if (_formKey.currentState
                                                    ?.validate() ??
                                                false) {
                                              // Perform login action
                                            } else {
                                              debugPrint('Validation failed!');
                                            }
                                          },
                                          child: Text(
                                            'Login',
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Don't have an account?",
                                      style: GoogleFonts.poppins(
                                        color: Color.fromARGB(
                                          255,
                                          83,
                                          107,
                                          101,
                                        ),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        signUpScreen();
                                      },
                                      child: Text(
                                        ' Create one!',
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF47897f),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
