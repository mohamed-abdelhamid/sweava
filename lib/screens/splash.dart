import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/size_config.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  initState() {
    super.initState();
    goToNextScreen();
  }

  goToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pop(context);
    Navigator.pushNamed(context, 'login');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Color(0xffF26651),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 8 * SizeConfig.blockSizeVertical,
                left: 8 * SizeConfig.blockSizeHorizontal,
              ),
              child: Text(
                'Find Your Gadget',
                style: GoogleFonts.raleway(
                  color: Color(0xffF26651),
                  fontSize: 8 * SizeConfig.blockSizeVertical,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 5* SizeConfig.blockSizeVertical,),
            Center(
              child: Image.asset('assets/images/logo.png',color: Color(0xffF26651)),
            ),
            Container(
              height: 45 * SizeConfig.blockSizeVertical,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/find your gadget.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
