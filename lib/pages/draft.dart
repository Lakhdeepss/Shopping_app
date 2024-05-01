import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DraftPage extends StatelessWidget {
  const DraftPage({super.key});

  @override
  Widget build(BuildContext context) {
    final  _formKey2 = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            "This is draft page"
                .text
                .color(Color.fromARGB(255, 44, 133, 145))
                .xl4
                .make()
                .p16()
                .centered(),
            HeightBox(20),
            Image.asset("assets/images/loginimg.png")
                .preferredSize(Size(50, 50)),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  label: "enter username".text.xl.make(), hintText: "username"),
            ).p16(),
          TextFormField(
            
          )
          ],
        ),
      ),
    );
  }
}
