import 'package:assignment/widgets/bottom_bar.dart';
import 'package:assignment/widgets/utils.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class NameRegisterScreen extends StatefulWidget {
  const NameRegisterScreen({super.key});

  @override
  State<NameRegisterScreen> createState() => _NameRegisterScreenState();
}

class _NameRegisterScreenState extends State<NameRegisterScreen> {
  final _verifyForm1 = GlobalKey<FormState>();
  final _verifyForm2 = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  void createAccount() {
    final isValidName = _verifyForm1.currentState!.validate();
    final isValidEmail = _verifyForm2.currentState!.validate();
    if (isValidName && isValidEmail) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const BottomBar(),
        ),
      );
    }
    showSnackBar(context, 'Registered Successfully');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              'Almost Done.',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18),
            child: Text(
              'Enter your personal information to create account',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _verifyForm1,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Name',
                      border: InputBorder.none,
                    ),
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Enter your name';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _verifyForm2,
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'Email Address',
                      border: InputBorder.none,
                    ),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Enter Your Mail Address';
                      }
                      return EmailValidator.validate(val)
                          ? null
                          : "Please enter a valid email";
                    },
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/background.jpeg'),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    child: TextButton(
                      style: const ButtonStyle(
                        side: MaterialStatePropertyAll(
                          BorderSide(style: BorderStyle.none),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                      ),
                      onPressed: createAccount,
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
