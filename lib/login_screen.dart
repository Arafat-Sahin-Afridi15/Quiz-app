import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;

  void _login() {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username.isNotEmpty && password.isNotEmpty) {
      if (username == 'Arafat' && password == 'arafat2001') {
        Navigator.pushReplacementNamed(context, '/quiz');
      } else {
        showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: Text('Login Failed'),
              content: Text('Invalid username or password.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Validation Error'),
            content: Text('Please enter both username and password.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  void _signUp() {
    // Navigate to the registration screen
    Navigator.pushNamed(context, '/register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        centerTitle: true, // Center the title
        backgroundColor: Colors.transparent, // Make the app bar transparent
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Colors.orange, Colors.red], // Define your gradient colors
            ),
            border: Border(
              bottom: BorderSide(
                color: Colors.black87, // Border color
                width: 2.0, // Border width
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.orange,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value!;
                          });
                        },
                      ),
                      Text('Remember Me'),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          // Implement "Forgot Password" functionality
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.teal,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: _login,
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent, // Change button color
                      minimumSize: Size(150, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 1),
                  ElevatedButton(
                    onPressed: _signUp,
                    child: Text(
                      'Create Account',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange, // Change button color
                      minimumSize: Size(150, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
