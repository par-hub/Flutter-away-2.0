import 'package:flutter/material.dart';
import 'package:formula_app/homescreeen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controllerWipe;
  late Animation<Offset> _animationWipe;
  late AnimationController _controllerEnd;
  late Animation<double> _animationScale;
  late Animation<Offset> _animationPos;

  @override
  void initState() {
    super.initState();

    _controllerWipe = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _controllerEnd = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animationWipe = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controllerWipe, curve: Curves.easeOut));

    _animationScale = Tween<double>(begin: 1.0, end: 0.15).animate(
      CurvedAnimation(parent: _controllerEnd, curve: Curves.easeOutCirc),
    );

    _animationPos = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(2.85, -2.85),
    ).animate(CurvedAnimation(parent: _controllerEnd, curve: Curves.easeOut));

    _controllerWipe.forward();

    Future.delayed(const Duration(seconds: 1), () {
      _controllerEnd.forward();
      Future.delayed(const Duration(seconds: 1), () {
        if (mounted) {
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              transitionDuration: Duration.zero,
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const Homescreeen(),
            ),
          );
        }
      });
    });
  }

  @override
  void dispose() {
    _controllerWipe.dispose();
    _controllerEnd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff29133f),
      body: ScaleTransition(
        scale: _animationScale,
        child: SlideTransition(
          position: _animationPos,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 174,
                  height: 219,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  child: SlideTransition(
                    position: _animationWipe,
                    child: Container(
                      width: 300,
                      height: 37,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/mobilon_text.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
