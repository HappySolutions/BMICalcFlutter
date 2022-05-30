import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailCntrl = TextEditingController();
  var passwordCntrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: emailCntrl,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordCntrl,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  height: 40.0,
                  child: MaterialButton(
                    onPressed: () {
                      print(emailCntrl.text);
                      print(passwordCntrl.text);
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account'),
                    TextButton(
                      onPressed: () {},
                      child: Text('Register Now'),
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
