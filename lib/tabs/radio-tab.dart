import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class radioTab extends StatelessWidget {
  static const String routename = "radioTab";

  const radioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Container(
        margin: EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/images/radio.png"),
              width: 412,
              height: 222,
            ),
            Container(
              height: 50,
            ),
            Text(
              "إذاعة القرآن الكريم",
              style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Color(0XFF242424)),
            ),
            Container(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_previous),
                    iconSize: 40,
                    color: Color(0XFFB7935F),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow_sharp),
                    iconSize: 40,
                    color: Color(0XFFB7935F),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_next_sharp),
                    iconSize: 40,
                    color: Color(0XFFB7935F),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
