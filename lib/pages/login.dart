import "package:basecode/pages/signUp.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class LoginPage extends StatefulWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Temp_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME BACK !",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFF2E1),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "You've been missed :)",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFFFFF2E1),
              ),
            ),

            const SizedBox(height: 35),

            // username
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

            const SizedBox(height: 20),

            // Password

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

            // Forgot password

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 28, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Forgot password ?",
                        style: TextStyle(
                          color: Color(0xFFFFF2E1),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Login

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
                  "Log in",
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Sign Up

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
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
                      "Sign Up",
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
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_right_alt_rounded)),
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            // sign up with

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
                  "or log in with",
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
