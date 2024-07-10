import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  const SignButton({super.key,  this.onpressed, required this.text});
  final void Function()? onpressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SizedBox(
        height: 60,
        width: MediaQuery.sizeOf(context).width,
        child: ElevatedButton(
          onPressed: onpressed,
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius:  BorderRadius.all(Radius.circular(10))
            ),
            backgroundColor: Colors.blue[600],
          ),
          
          child:  Text(
            text,
            style: const TextStyle(color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
