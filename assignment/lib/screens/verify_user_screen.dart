import 'package:assignment/screens/name_register_screen.dart';
import 'package:assignment/utils.dart';
import 'package:flutter/material.dart';

class VerifyUserScreen extends StatefulWidget {
  final String number;
  const VerifyUserScreen({super.key, required this.number});

  @override
  State<VerifyUserScreen> createState() => _VerifyUserScreenState();
}

class _VerifyUserScreenState extends State<VerifyUserScreen> {
  final _verifyForm1 = GlobalKey<FormState>();
  final _verifyForm2 = GlobalKey<FormState>();
  final _verifyForm3 = GlobalKey<FormState>();
  final _verifyForm4 = GlobalKey<FormState>();
  final _verifyForm5 = GlobalKey<FormState>();
  final _num1 = TextEditingController();
  final _num2 = TextEditingController();
  final _num3 = TextEditingController();
  final _num4 = TextEditingController();
  final _num5 = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _num1.dispose();
    _num2.dispose();
    _num3.dispose();
    _num4.dispose();
    _num5.dispose();
  }

  void verify() {
    final isValid = _verifyForm1.currentState!.validate() &&
        _verifyForm2.currentState!.validate() &&
        _verifyForm3.currentState!.validate() &&
        _verifyForm4.currentState!.validate() &&
        _verifyForm5.currentState!.validate();
    if (isValid) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const NameRegisterScreen(),
        ),
      );
      showSnackBar(context, 'Verified');
    }
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
              'Enter Code.',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: RichText(
              text: TextSpan(
                text:
                    'We\'ve send an SMS with an activation code to your phone ',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                children: [
                  TextSpan(
                    text: '+91 ${widget.number}',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 60,
                  height: 60,
                  child: Form(
                    key: _verifyForm1,
                    child: TextFormField(
                      controller: _num1,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Enter the number';
                        } else if (val.length > 1) {
                          return 'Enter Single number';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 60,
                  height: 60,
                  child: Form(
                    key: _verifyForm2,
                    child: TextFormField(
                      controller: _num2,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Enter the number';
                        } else if (val.length > 1) {
                          return 'Enter Single number';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 60,
                  height: 60,
                  child: Form(
                    key: _verifyForm3,
                    child: TextFormField(
                      controller: _num3,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Enter the number';
                        } else if (val.length > 1) {
                          return 'Enter Single number';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 60,
                  height: 60,
                  child: Form(
                    key: _verifyForm4,
                    child: TextFormField(
                      controller: _num4,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Enter the number';
                        } else if (val.length > 1) {
                          return 'Enter Single number';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 60,
                  height: 60,
                  child: Form(
                    key: _verifyForm5,
                    child: TextFormField(
                      controller: _num5,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Enter the number';
                        } else if (val.length > 1) {
                          return 'Enter Single number';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
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
                      onPressed: verify,
                      child: const Text(
                        'Verify',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
