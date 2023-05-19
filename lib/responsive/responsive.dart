import 'package:flutter/material.dart';
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.mobileBody,required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth<600)
          {
            return mobileBody;
          }
          else
          {
            return desktopBody;
          }
        }
      ),
    );
  }
}
