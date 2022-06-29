import 'package:flutter/material.dart';
import 'dart:math' as math;
//import 'package:flutter/services.dart';
import '../widgets/main_button.dart';
import 'sign_up.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({ Key? key }) : super(key: key);
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}
class _OnBoardingState extends State<OnBoarding> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }
    Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xffe5bf88) : const Color(0xFFe9e9e9),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(margin: const EdgeInsets.only(top: 40.0, right: 17,bottom: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color(0xFFfcf3e7),
                    ),
                    width: 70,
                    height: 40,
                    child: const Center(
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ), 
              ],
            ),
            Image.asset('assets/images/7krave_logo.png',width: 120,),
            Container(
              height: 430.0,
              child: PageView(
                physics: const ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page){
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                    children: [
                      Transform(alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: Image.asset('assets/images/Take_Away_rafiki.png',colorBlendMode: BlendMode.modulate,width: double.infinity,)),
                      const Center(child: Text('Get food delivery to your\n doorstep asap',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                      Container(padding: const EdgeInsets.fromLTRB(8,10,8,8),
                       child: const Center(child: Text(
                          'we have young and professional delivery\n team that will'
                           'bring your food as soon as\n possible to your doorstep',
                          style: TextStyle(fontSize: 14,color: Color.fromARGB(255,146, 146, 146)),
                          textAlign: TextAlign.center,)),
                      ),
                    ],
                   ),
                 ),
                  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                    children: [
                      Transform(alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: Image.asset('assets/images/Take_Away_cuate.png',height: 270,width: double.infinity,)),
                      const Center(child: Text('Buy Any Food from your\n favorite restaurant',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                      Container(padding: const EdgeInsets.fromLTRB(8,10,8,8),
                       child: const Center(child: Text(
                          'we are constantly adding favourite\n restaurant throughout the territory'
                          'and around\n your area carefully selected',
                          style: TextStyle(fontSize: 14,color: Color.fromARGB(255,146, 146, 146)),
                          textAlign: TextAlign.center,)),
                      ),
                    ],
                   ),
                 )
                ],
              ),
            ),
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
            const MainButton(buttonColor: Color(0xff51afab), height: 50, radius: 7.0, text: 'Get Started'),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                style: TextStyle(fontSize: 16,),),
                 Container(margin: EdgeInsets.fromLTRB(6, 15, 0, 15),
                   child: InkWell(
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: 
                  (context)=>const Rigister()));
              },
              child: const Text('Sign Up',style: TextStyle(fontSize: 16,color: Color(0xff51afab)),),
            ),
                 ),
              ],
            )
          ],
        ),
      ),
    );
  }
}