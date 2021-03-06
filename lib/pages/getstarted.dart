import 'package:flutter/material.dart';
import 'package:pastry_app/pages/screen0.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            child: Transform.translate(
              offset: const Offset(0, 50),
              child: Transform.scale(
                scale: 1.2,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/cooker.png'),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                // Circle White Bg
                Transform.translate(
                  offset: const Offset(0, 190),
                  child: Transform.scale(
                    scale: 2.2,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(190),
                          topRight: Radius.circular(190),
                        ),
                      ),
                    ),
                  ),
                ),

                // Captions Carousel
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 30),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: PageView(
                          children: [
                            CaptionContainer(
                                Heading1: 'The Fastest In Delivery ',
                                Heading2: 'Food',
                                text:
                                    'Our job is to filling your tummy with delicious food and fast delivery'),
                            CaptionContainer(
                                Heading1: 'Your Best ',
                                Heading2: 'Pastry',
                                text: 'Find what make you happy when you eat'),
                          ],
                        ),
                      ),

                      // Get Started Button
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Screen0()),
                          )
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFFF54749),
                          ),
                          child: const Center(
                            child: Text(
                              'Get Started',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CaptionContainer extends StatelessWidget {
  CaptionContainer(
      {required this.Heading1, required this.Heading2, required this.text});

  final String Heading1;
  final String Heading2;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(40, 15, 40, 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: Heading1,
                style: TextStyle(
                    color: Color(0xFF232A30),
                    fontWeight: FontWeight.w700,
                    fontSize: 33),
                children: <TextSpan>[
                  TextSpan(
                    text: Heading2,
                    style: TextStyle(
                      color: Color(0xFFF54749),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Roboto',
                  decoration: TextDecoration.none,
                  color: Color(0xFF232A30),
                  fontWeight: FontWeight.w200,
                  fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
