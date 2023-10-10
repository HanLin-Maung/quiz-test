// import 'package:flutter/material.dart';

// class StartScreen extends StatelessWidget {
//   const StartScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             'assets/images/quiz-logo.png',
//             width: 300,
//           ),
//           const Text(
//             'Learn Flutter the fun way!',
//             style: TextStyle(
//               color: Color.fromARGB(255, 237, 223, 252),
//               fontSize: 24,
//             ),
//           ),
//           OutlinedButton.icon(
//             onPressed: () {},
//             style: OutlinedButton.styleFrom(
//               foregroundColor: Colors.white,
//             ),
//             icon: const Icon(Icons.arrow_right_alt),
//             label: const Text('Start Quiz'),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 80,),
          Text(
            'learn Flutter the fun way!',
            style: GoogleFonts.ubuntu(
              color: Color.fromARGB(255, 160, 249, 174),
                fontSize: 24,
                fontWeight: FontWeight.bold,
            )
          ),
          const SizedBox(height: 30,),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon : const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}