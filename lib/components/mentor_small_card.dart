import 'package:flutter/material.dart';
import '../models/models.dart';
import '../utill/widget_size.dart';

class MentorSmallCard extends StatefulWidget {
  final Mentor mentor;
  const MentorSmallCard({required this.mentor, Key? key}) : super(key: key);

  @override
  State<MentorSmallCard> createState() => _MentorSmallCardState();
}

class _MentorSmallCardState extends State<MentorSmallCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.white70,
        ),
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    "Mentor's basic information",
                    style: TextStyle(
                      color: Color(
                        0Xff2BC3BB,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                //name
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Name:",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        '${widget.mentor.f_name} ${widget.mentor.l_name}',
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                //student data
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: SizedBox(
                    width: widgetSize.getWidth(70, context),
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      text:  TextSpan(
                        children: [
                          const TextSpan(
                            text: "Email address: ",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          TextSpan(
                            text: widget.mentor.email!,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Code: ",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        TextSpan(
                          text: widget.mentor.code!,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //picture
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              'mentor.png',
              fit: BoxFit.fitHeight,
              width: widgetSize.getWidth(80, context),
              height: widgetSize.getHeight(230, context),
            ),
          ),
        ],
      ),
    );
  }
}
