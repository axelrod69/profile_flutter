import 'package:flutter/material.dart';

class LoginAndRegisterForm extends StatefulWidget {
  LoginAndRegisterFormState createState() => LoginAndRegisterFormState();
}

class LoginAndRegisterFormState extends State<LoginAndRegisterForm> {
  final GlobalKey<FormState> _form = GlobalKey();
  final _firstNameFocus = FocusNode();
  final _lastNameFocus = FocusNode();
  final _emailFocus = FocusNode();
  final _passwordFocus = TextEditingController();
  final _confirmPasswordFocus = FocusNode();
  var _clicked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _clicked ? Container(
      width: 350,
      height: 380,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset.zero,
            blurRadius: 20,
            spreadRadius: 5
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Form(
              key: _form,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "First Name",
                          prefixIcon: Icon(Icons.perm_identity)
                      ),
                      focusNode: _firstNameFocus,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_lastNameFocus);
                      },
                      validator: (value) {
                        if(value!.isEmpty) {
                          return "First Name must be atleast one character";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        prefixIcon: Icon(Icons.perm_identity)
                      ),
                      focusNode: _lastNameFocus,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_emailFocus);
                      },
                      validator: (value) {
                        if(value!.isEmpty || value.length < 2) {
                          return "Last Name must be atleast 2 characters";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email)
                      ),
                      focusNode: _emailFocus,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if(value!.isEmpty) {
                          return "Email cannot be empty";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.vpn_key)
                      ),
                      controller: _passwordFocus,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_confirmPasswordFocus);
                      },
                      validator: (value) {
                        if(value!.isEmpty) {
                          return "Please Enter Password";
                        } else if(value.length < 10) {
                          return " Password must be atleast 10 characters long";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Confirm Password",
                          prefixIcon: Icon(Icons.vpn_key)
                      ),
                      focusNode: _confirmPasswordFocus,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_confirmPasswordFocus);
                      },
                      validator: (value) {
                        if(value!.isEmpty) {
                          return "Please Enter Password";
                        } else if(value != _passwordFocus.text) {
                          return "Passwords don't match";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 18),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _clicked = !_clicked;
                      });
                    },
                    child: Text(
                        "Already Have An Account? Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ) : Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset.zero,
                blurRadius: 20,
                spreadRadius: 5
            )
          ]
      ),
      child: Column(
        children: [
          Form(
            key: _form,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email)
                      ),
                      focusNode: _emailFocus,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if(value!.isEmpty) {
                          return "Email cannot be empty";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.vpn_key)
                      ),
                      controller: _passwordFocus,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_confirmPasswordFocus);
                      },
                      validator: (value) {
                        if(value!.isEmpty) {
                          return "Please Enter Password";
                        } else if(value.length < 10) {
                          return " Password must be atleast 10 characters long";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _clicked = !_clicked;
                      });
                    },
                    child: Text(
                        "Don't Have An Account? Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                        )
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
