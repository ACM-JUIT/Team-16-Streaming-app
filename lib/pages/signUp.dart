import 'package:basecode/pages/login.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // toggle for password visibility
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Temp_background.png"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Create an account

            Text(
              "CREATE AN ACCOUNT",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFF2E1),
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 30),

            // name

            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: Color(0xFF322C2B),
                    fontSize: 18,
                  ),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  filled: true,
                  fillColor: Color(0xFFFFF2E1),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // email

            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Color(0xFF322C2B),
                    fontSize: 18,
                  ),
                  prefixIcon: Icon(Icons.mail_outline_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  filled: true,
                  fillColor: Color(0xFFFFF2E1),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // password

            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Color(0xFF322C2B),
                    fontSize: 18,
                  ),
                  prefixIcon: Icon(Icons.lock_rounded),
                  suffixIcon: IconButton(
                    icon: Icon(_obscureText
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded),
                    color: Color(0xFF322C2B),
                    onPressed: _togglePasswordVisibility,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  filled: true,
                  fillColor: Color(0xFFFFF2E1),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // confirm password

            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                    color: Color(0xFF322C2B),
                    fontSize: 18,
                  ),
                  prefixIcon: Icon(Icons.lock_rounded),
                  suffixIcon: IconButton(
                    icon: Icon(_obscureText
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded),
                    color: Color(0xFF322C2B),
                    onPressed: _togglePasswordVisibility,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  filled: true,
                  fillColor: Color(0xFFFFF2E1),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // sign up

            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    colors: [Color(0xFF999187), Color(0xFFFFF2E1)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // login

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFFFF2E1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        )),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF322C2B),
                      ),
                    ),
                  ),
                  Container(
                    height: 39,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFF2E1),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_right_alt_rounded)),
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            // or sign up with

            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(
                      color: Colors.grey,
                      height: 36,
                    ),
                  ),
                ),
                Text(
                  "or sign up with",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFFFFF2E1),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(
                      color: Colors.grey,
                      height: 36,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // firebase login

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // google button

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/Google.png"),
                    )),
                  ),
                ),

                const SizedBox(width: 15),

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/Apple.png"),
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
