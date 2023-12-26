import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  final void Function()? onPressed;
  const SingUp({super.key, required this.onPressed});
  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  final TextEditingController _name = TextEditingController();
  final TextEditingController _carrera = TextEditingController();
  final TextEditingController _matricula = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  createUserWithEmailAndPassword() async {
    try {
      setState(() {
        isLoading = true;
      });
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email.text,
          password: _password.text
          );
          setState(() {
        isLoading = false;
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == 'weak-password') {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('The password provided is too weak.'),
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('The account already exists for that email.'),
          ),
        );
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sing Up"),
        ),
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: OverflowBar(
            overflowSpacing: 20,
            children: [
              TextFormField(
                controller: _name,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'name is empty';
                  }
                  return null;
                },
                decoration: const InputDecoration(hintText: "name"),
              ),

              TextFormField(
                controller: _email,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Email is empty';
                  }
                  return null;
                },
                decoration: const InputDecoration(hintText: "Email"),
              ),
              
              TextFormField(
                controller: _password,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Password is empty';
                  }
                  return null;
                },
                decoration: const InputDecoration(labelText: "Password"),
              ),
              TextFormField(
                controller: _carrera,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'carrea is empty';
                  }
                  return null;
                },
                decoration: const InputDecoration(hintText: "carrera"),
              ),

              TextFormField(
                controller: _matricula,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'matricula is empty';
                  }
                  return null;
                },
                decoration: const InputDecoration(hintText: "matricula"),
              ),

              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      createUserWithEmailAndPassword();
                    }
                  },
                  child: isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      : const Text("Sing Up"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: widget.onPressed,
                  child: const Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
