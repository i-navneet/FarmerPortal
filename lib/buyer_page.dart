import 'package:flutter/material.dart';

class BuyersLoginPage extends StatefulWidget {
  @override
  _BuyersLoginPageState createState() => _BuyersLoginPageState();
}

class _BuyersLoginPageState extends State<BuyersLoginPage> {
  static final _formKey = GlobalKey<FormState>();

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
                            onPressed: () {
                              final form = _formKey.currentState;
                              if (form.validate()) {
                                form.save();
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
                    Navigator.pushNamed(context, '/buyers_register_page');
                  },
                ),
              ],
            ),
          ),
        )
    );
  }
}

class BuyersRegisterPage extends StatefulWidget {
  @override
  _BuyersRegisterPageState createState() => _BuyersRegisterPageState();
}

class _BuyersRegisterPageState extends State<BuyersRegisterPage> {
  static final _formKey = GlobalKey<FormState>();

  String email, password, confPassword, firstName, lastName, locality, firmName,
      gstNo;

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
                      Text('Firm\'s Name: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          firmName = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter your firm\'s name',
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
                            return 'Please enter your firm\'s name';
                          }
                          return null;
                        },
                      ),
                      Text('GST Number: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          gstNo = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter your gst number',
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
                            return 'Please enter your gst number';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: RaisedButton(
                            onPressed: () {
                              final form = _formKey.currentState;
                              if (form.validate()) {
                                form.save();
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
