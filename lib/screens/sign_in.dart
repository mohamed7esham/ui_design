
import 'package:flutter/material.dart';
import '../widgets/main_button.dart';
import '../widgets/rLabel.dart';
import '../widgets/rTextField.dart';
import 'on_boarding.dart';
import 'sign_up.dart';
class LogIn extends StatelessWidget {
  const LogIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity, height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bgsign.jpg'),
                fit: BoxFit.cover,
              ),
              )
            ),
            const SizedBox(height: 25),
            Container(alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 24.0),
              child: const Text("Welcome to Fashion Daily",style: TextStyle(fontSize: 14,
              color: Color(0xFF949397)),textAlign: TextAlign.left,),
            ),
           const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children:  [
                  const Text('Sign in',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,)),
                  const Spacer(),
                  Directionality(textDirection: TextDirection.rtl,
                    child: TextButton.icon(onPressed: (){}, icon:const Icon(Icons.help_outlined), label: const Text('Help',
                    style: TextStyle(fontSize: 18,)),)), 
                    ],
              ),
            ),
            const SizedBox(height: 15),
          const MyLable(fontsize: 16.0, text: 'Phone Number',),
          const MyTextField(hintTextt: 'Eg. 812345678',),
          const SizedBox(height: 15),
          const MainButton(buttonColor: Color(0xFF3686ff),r_l_padding:24, height: 40, radius: 4, text: 'Sign In',),
          Row(
            children: [
              Container(margin: const EdgeInsets.fromLTRB(26, 15, 18, 15),
                width: MediaQuery.of(context).size.width * 0.35,
                height: 2,color: Colors.grey[200],
              ),
              const Text('Or'),
              Container(margin: const EdgeInsets.fromLTRB(18, 15, 24, 15),
                width: MediaQuery.of(context).size.width * 0.35,
                height: 2,color: Colors.grey[200],
              ),
            ],
          ),
          Container(width: double.infinity,height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF81a6da),width: 2),borderRadius: BorderRadius.circular(4.0),
            ),
             margin: const EdgeInsets.only(left: 24,right: 24,top: 6),
            child: TextButton.icon(onPressed: (){}, icon:const Icon(Icons.logo_dev),
             label: const Text('Sign with by google',
               style: TextStyle(fontSize: 14,
               ),),),
          ),
          const SizedBox(height: 25),
              Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Dosen't has any account?",
                style: TextStyle(fontSize: 14,),),
                TextButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: 
                  (context)=>const Rigister()));
                },
                 label: const Text('Register here',style: TextStyle(fontSize: 14,
                 color: Color(0xff3686ff)),), icon: const Icon(Icons.app_registration_sharp)),
              ],
            ),
            const SizedBox(height: 35),
            const Text('Use the application according to policy rules.Any\n' 
            'kinds of violation will be subject to sanction.',textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12,height: 1.5,
            color: Color(0xFFb3b2b7))),
            const SizedBox(height: 35),
        ],
      ),
    ),
    );
  }
}