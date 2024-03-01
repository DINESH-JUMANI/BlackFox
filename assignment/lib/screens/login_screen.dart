import 'package:assignment/screens/verify_user_screen.dart';
import 'package:assignment/utils.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _verifyForm = GlobalKey<FormState>();
  void sendOTP() {
    final isValid = _verifyForm.currentState!.validate();
    if (isValid) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const VerifyUserScreen(),
        ),
      );
      showSnackBar(context, 'OTP Send Successfully');
    }
  }

  void skipProcess() {
    // to be implemented
  }

  final TextEditingController number = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    number.dispose();
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
              'Welcome.',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              'Log in to your account',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
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
              child: Row(
                children: [
                  const CountryCodePicker(
                    onChanged: print,
                    initialSelection: 'In',
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    //showDropDownButton: true,
                    alignLeft: false,
                  ),
                  Expanded(
                    child: Form(
                      key: _verifyForm,
                      child: TextFormField(
                        controller: number,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'Mobile number',
                          border: InputBorder.none,
                        ),
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Enter your phone number';
                          } else if (val.length != 10) {
                            return 'Enter valid phone number';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, right: 10),
            child: Text(
              'You will receive an SMS verification that may apply message and data rates',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black38,
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
                      onPressed: sendOTP,
                      child: const Text(
                        'Send OTP',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: skipProcess,
                    child: const Center(
                      child: Text(
                        'Skip Process',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
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
