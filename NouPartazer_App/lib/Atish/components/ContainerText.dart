import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/IconText.dart';

class ContainerText extends StatelessWidget
{
  final double mLeft, mTop, mRight, mBottom;
  final double pLeft, pTop, pRight, pBottom;
  final int BorderR, BorderG, BorderB;
  final double BorderO;
  final int BoxR, BoxG, BoxB;
  final double BoxO;
  final int TextR, TextG, TextB;
  final double TextO;

  final double borderWidth;
  final double borderRadius;

  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  ContainerText
  (
    {
      this.text = 'Test',
      this.fontWeight = FontWeight.bold,
      this.fontSize = 18, 
      this.mLeft    = 0, 
      this.mTop     = 0, 
      this.mRight   = 0, 
      this.mBottom  = 0,
      this.pLeft    = 5, 
      this.pTop     = 5, 
      this.pRight   = 5, 
      this.pBottom  = 5,
      this.BorderR  = 0,
      this.BorderG  = 0,
      this.BorderB  = 0,
      this.BorderO  = 0,
      this.BoxR     = 0,
      this.BoxG     = 0,
      this.BoxB     = 0,
      this.BoxO     = 1,
      this.TextR    = 255,
      this.TextG    = 255,
      this.TextB    = 255,
      this.TextO    = 1,
      this.borderRadius = 5,
      this.borderWidth  = 0
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      margin: EdgeInsets.fromLTRB
      (
        mLeft,
        mTop,
        mRight,
        mBottom,
      ),
      padding: EdgeInsets.fromLTRB
      (
        pLeft,
        pTop,
        pRight,
        pBottom,
      ),
      
      decoration: BoxDecoration
      (
        color: Color.fromRGBO(BoxR, BoxG, BoxB, BoxO),
        border: Border.all
        (
          color: new Color.fromRGBO(BorderR, BorderG, BorderB, BorderO),
          width: borderWidth,
        ),
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ),
      child: Text
      (
        text,
        style: TextStyle
        (
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: Color.fromRGBO(TextR, TextG, TextB, TextO)
        ),
      ),
    );
  }
}