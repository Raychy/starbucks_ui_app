import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:starbucks_ui_app/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPageScreen extends StatefulWidget {
  static const routeName = "/landing-page";
  const LandingPageScreen({Key key}) : super(key: key);

  @override
  _LandingPageScreenState createState() => _LandingPageScreenState();
}

class _LandingPageScreenState extends State<LandingPageScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
   
  }

  Widget _buildFullscrenImage() {
    return Image.asset(
      'assets/images/imageSlide1.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 400]) {
    return Image.asset('assets/images/$assetName', width: width, fit: BoxFit.fitHeight, );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration =  PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      // descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.only(top: 50, bottom: 0),
      // contentMargin: EdgeInsets.all(5),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: Image.asset('assets/images/logo.png', width: 100),
          ),
        ),
      ),
      globalFooter: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child:  Text(
              'Get Started',
              style: GoogleFonts.manrope(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            style: ButtonStyle(
              elevation: MaterialStateProperty.all( 0.0),
              backgroundColor: MaterialStateProperty.all(
                AppColors.primaryColor,
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal:30, vertical:10 )),
            ),
            onPressed: () =>  Navigator.pushNamed(context, "/login-page")
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?", style: GoogleFonts.manrope(        
                ),),
              TextButton(onPressed: () {}, child: Text("Log in", style: GoogleFonts.manrope(        
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),))
            ],
          )
        ],
      ),
      pages: [
        PageViewModel(
          titleWidget: Column(
            children: [
              Text(
                "Good Coffee",
                textAlign: TextAlign.center,
                style: GoogleFonts.manrope(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                " Good Moods",
                textAlign: TextAlign.center,
                style: GoogleFonts.manrope(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          bodyWidget: Text(
            "Instead of having to buy an entire share, invest any amount you want.",
            textAlign: TextAlign.center,
            style: GoogleFonts.manrope(fontSize: 12),
          ),
          image: _buildImage('imageSlide1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          // title: "Learn as you go",
          // body:
          //     "Download the Stockpile app and master the market with our mini-lesson.",
          titleWidget: RichText(
            textAlign: TextAlign.center,
            maxLines: 2,
            text: TextSpan(
              text: 'Starbucks ',
              style: GoogleFonts.manrope(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
              children: <TextSpan>[
                TextSpan(
                    text: 'Frappuccino Work can wait',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.smallTextColor)),
              ],
            ),
          ),
          bodyWidget: Text(
            " “Bring a friend and enjoy a Frappuccino. Find stores in your area.”",
            textAlign: TextAlign.center,
            style: GoogleFonts.manrope(fontSize: 12),
          ),
          image: _buildImage('imageSlide2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: RichText(
            textAlign: TextAlign.center,
            maxLines: 2,
            text: TextSpan(
              text: 'Morning begins with Tropical Splash ',
              style: GoogleFonts.manrope(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.smallTextColor),
              children: <TextSpan>[
                TextSpan(
                    text: 'Startbucks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor)),
              ],
            ),
          ),
          bodyWidget: Text(
            " “Bring the Fantasy Tail Frappuccino, or treat yourself to the boldly refreshing Peach Cloud with Jelly.”",
            textAlign: TextAlign.center,
            style: GoogleFonts.manrope(fontSize: 12),
          ),
          image: _buildImage('imageSlide3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      showDoneButton: false,
      showNextButton: false,

      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        activeColor: AppColors.primaryColor,
        color: AppColors.smallTextColor.withOpacity(0.6),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
//  ElevatedButton(onPressed: (){}, child: Text('Get Started'))
