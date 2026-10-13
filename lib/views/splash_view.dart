import 'package:firsttask/constants/app_colors.dart';
import 'package:firsttask/views/login_view.dart';
import 'package:flutter/material.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),
    (){
      if(!mounted)return;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const LoginView()));
    }
    
    );
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox.expand(child: Image.asset('assets/image/Welcome_Splash.png',fit: BoxFit.cover,),
      ),

    );
  }
}