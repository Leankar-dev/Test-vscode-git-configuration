// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CalcButton extends StatelessWidget {
//   final String? text;
//   final int? fillColor;
//   final int? textColor;
//   final double? textSize;
//   final Function? callback;

//   const CalcButton({
//     super.key,
//     this.text,
//     this.fillColor,
//     this.textColor,
//     this.textSize,
//     this.callback,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(10),
//       child: SizedBox(
//         width: 65,
//         height: 65,
//         child: FlatButton(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(50.0),
//           ),
//           onPressed: () {
//             callback!(text);
//           },
//           child: Text(
//             text!,
//             style: GoogleFonts.rubik(
//               textStyle: TextStyle(
//                 fontSize: textSize,
//               ),
//             ),
//           ),
//           color: fillColor != null ? Color(fillColor!) : null,
//           textColor: Color(textColor!),
//         ),
//       ),
//     );
//   }
// }
