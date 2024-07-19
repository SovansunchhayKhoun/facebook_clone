import 'package:flutter/material.dart';
import 'package:project/widgets/forgot_password/footer_text.dart';
import 'package:project/widgets/forgot_password/forgot_password_header.dart';
import 'package:project/widgets/forgot_password/mobile_number_input.dart';
// import 'forgot_password_header.dart'; // Import the relevant widget files
// import 'mobile_number_input.dart';
// import 'footer_text.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ForgotPasswordHeader(),
            const SizedBox(height: 16),
            const MobileNumberInput(),
            const SizedBox(height: 8),
            const FooterText(),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                //
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
