import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controllers/size_config.dart';

TextStyle kTextStyle = GoogleFonts.raleway(
  color: Colors.black,
  fontSize: 4.5 * SizeConfig.blockSizeHorizontal ,
  fontWeight: FontWeight.w700,

);

TextStyle kWritingStyle = GoogleFonts.raleway(
  color: Color(0xffF26651),
  fontSize: 4.5 * SizeConfig.blockSizeHorizontal ,
  fontWeight: FontWeight.w600,
);

TextStyle kDropStyle = TextStyle(
    fontSize: 4.5 * SizeConfig.blockSizeHorizontal ,
    fontWeight: FontWeight.w400
);

TextStyle kSmallFont = TextStyle(
  fontSize: 3.5*SizeConfig.blockSizeHorizontal,
  fontWeight: FontWeight.w900,
  color: Colors.grey
);
