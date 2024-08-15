import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_hyve/core/constants/color_constants.dart';

class SwipeToEnterButton extends StatefulWidget {
  final VoidCallback onSwipe;

  const SwipeToEnterButton({super.key, required this.onSwipe});

  @override
  State<SwipeToEnterButton> createState() => _SwipeToEnterButtonState();
}

class _SwipeToEnterButtonState extends State<SwipeToEnterButton>
    with SingleTickerProviderStateMixin {
  late VoidCallback onSwipeFunction;
  double _buttonPosition = 0;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    onSwipeFunction = widget.onSwipe;
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      _buttonPosition += details.delta.dx;
      if (_buttonPosition < 0) _buttonPosition = 0;
      if (_buttonPosition > MediaQuery.of(context).size.width * 0.8)
        _buttonPosition = MediaQuery.of(context).size.width - 50 - 27 * 2;
    });
  }

  void _onPanEnd(DragEndDetails details) {
    if (_buttonPosition >
        MediaQuery.of(context).size.width - 50 - 27 * 2 - 50) {
      setState(() {
        _buttonPosition = MediaQuery.of(context).size.width - 50 - 27 * 2;
        onSwipeFunction.call();
        Future.delayed(const Duration(seconds: 2)).then((val) {
          _buttonPosition = 0;
        });
      });
      // Perform your action here, e.g., navigating to another screen
    } else {
      setState(() {
        _buttonPosition = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 25),
              Text(
                'Swipe to Enter',
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.primaryColor,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 8,
          left: 11,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
            transform: Matrix4.translationValues(_buttonPosition, 0, 0),
            child: GestureDetector(
              onPanUpdate: _onPanUpdate,
              onPanEnd: _onPanEnd,
              child: Container(
                width: 53,
                height: 53,
                decoration: const BoxDecoration(
                  color: ColorConstants.primaryColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Center(
                  child: /*  Icon(Icons.arrow_forward_ios) */
                      Text(
                    '>>',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
