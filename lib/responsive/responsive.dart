import 'package:ams/widgets/constants.dart';
import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  final mobilescreen;
  final Widget webScreen;
  const Responsive({super.key, this.mobilescreen, required this.webScreen});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints)
            {
              if(constraints.maxWidth<900)
              {
                isMobile=true;
                isWeb=false;
                return widget.mobilescreen;
              }
              else
                {
                  isWeb=true;
                  isMobile=false;
                  return widget.webScreen;
                }
            }
    );
  }
}
