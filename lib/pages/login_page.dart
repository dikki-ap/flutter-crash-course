import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon
            Image.asset(
              'assets/images/icon_money.png',
              width: 50,
            ),
            const SizedBox(
              height: 70,
            ),

            // Header Text
            Text('Welcome back. \nLet’s make money.',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24)),
            const SizedBox(
              height: 70,
            ),

            // E-mail TextField
            TextFormField(
              style: GoogleFonts.openSans(color: Colors.white),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none),
                  fillColor: const Color(0xff262A34),
                  filled: true,
                  hintText: 'E-mail',
                  hintStyle:
                      GoogleFonts.openSans(color: const Color(0xff6F7075))),
            ),
            const SizedBox(
              height: 20,
            ),

            // Password TextField
            TextFormField(
              obscureText: true, // Use this for "Password" Textfield
              style: GoogleFonts.openSans(color: Colors.white),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none),
                  fillColor: const Color(0xff262A34),
                  filled: true,
                  hintText: 'Password',
                  hintStyle:
                      GoogleFonts.openSans(color: const Color(0xff6F7075)),
                  suffixIcon: const Icon(Icons.visibility)),
            ),
            const SizedBox(
              height: 8,
            ),

            // Forgot Password Text
            Container(
              alignment: const Alignment(1, 0.75),
              child: Text(
                'Forgot My Password',
                style: GoogleFonts.poppins(color: const Color(0xff6A6B70)),
              ),
            ),
            const SizedBox(
              height: 144,
            ),

            // Sign In Button
            Center(
              child: SizedBox(
                width: 295,
                height: 55,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0xffFCAC15)),
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.openSans(
                          color: const Color(0xff6B4909),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            // Sign Up Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?',
                    style: GoogleFonts.poppins(color: Colors.white)),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
