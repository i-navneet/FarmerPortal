import 'package:flutter/material.dart';
import 'authentication.dart';
class FarmersLoginPage extends StatefulWidget {
  @override
  _FarmersLoginPageState createState() => _FarmersLoginPageState();
}

class _FarmersLoginPageState extends State<FarmersLoginPage> {

  static final _formKey = GlobalKey<FormState>();
  final Auth _authService=Auth();
  String username, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Farmers Portal"),
        ),
        body:
        Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text("Login",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Username: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          username = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Enter your username',
                          hintStyle: TextStyle(
                            color: Colors.blue[200],
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[400],
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[600],
                              width: 4,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter username';
                          }
                          return null;
                        },

                      ),
                      Text('Password: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          password = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            color: Colors.blue[200],
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[400],
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[600],
                              width: 4,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: RaisedButton(
                            onPressed: () async{
                              final form = _formKey.currentState;
                              if (form.validate()) {
                                form.save();
                              }
                            dynamic result=await _authService.signIn(username, password);
                            if(result==null)
                              print("Cannot Sign In");
                            else {
                              Navigator.pushNamed(context, '/home_page');
                              print(result.displayName);
                            }

                            },
                            child: Text('Login',
                              style: TextStyle(
                                fontSize: 20,

                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Center(
                    child: Text('OR',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Text("Don\'t have an account?",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 30),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: Colors.white,
                  child: Text('Register',
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                  onPressed: () {
                    Navigator.pushNamed(context, '/farmers_register_page');
                  },
                ),
              ],
            ),
          ),
        )
    );
  }
}

class FarmersRegisterPage extends StatefulWidget {
  @override
  _FarmersRegisterPageState createState() => _FarmersRegisterPageState();
}

class _FarmersRegisterPageState extends State<FarmersRegisterPage> {

  static final _formKey = GlobalKey<FormState>();

  String email, password, firstName, lastName, locality, confPassword;
  final Auth _authService=Auth();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Farmers Portal"),
        ),
        body:
        Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text("Register",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('First Name: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          firstName = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter your first name',
                          hintStyle: TextStyle(
                            color: Colors.blue[200],
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[400],
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[600],
                              width: 4,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter first name';
                          }
                          return null;
                        },

                      ),
                      Text('Last Name: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          lastName = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter your last name',
                          hintStyle: TextStyle(
                            color: Colors.blue[200],
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[400],
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[600],
                              width: 4,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter last name';
                          }
                          return null;
                        },
                      ),
                      Text('Email Address: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Enter your email address',
                          hintStyle: TextStyle(
                            color: Colors.blue[200],
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[400],
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[600],
                              width: 4,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter email address';
                          }
                          if (!value.endsWith('@gmail.com'))
                            return 'Please enter valid email address';
                          return null;
                        },
                      ),
                      Text('Password: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextFormField(
                        controller: _passController,
                        onSaved: (value) {
                          password = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            color: Colors.blue[200],
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[400],
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[600],
                              width: 4,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                      Text('Confirm Password: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          confPassword = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Enter your password again',
                          hintStyle: TextStyle(
                            color: Colors.blue[200],
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[400],
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[600],
                              width: 4,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter password again here';
                          }
                          if (value != _passController.text) {
                            return 'password and confirm password do not match';
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                      Text('Locality: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          locality = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter your locality',
                          hintStyle: TextStyle(
                            color: Colors.blue[200],
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[400],
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.blue[600],
                              width: 4,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your locality';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: RaisedButton(
                            onPressed: () async{
                              final form = _formKey.currentState;
                              if (form.validate()) {
                                form.save();
                                dynamic result =await _authService.signUp(email, password, firstName, lastName, locality);
                                if(result==null)
                                  print("cannot sign up");
                              else{
                                print(result.displayName);

                              }
                              }

                            },
                            child: Text('Register',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
