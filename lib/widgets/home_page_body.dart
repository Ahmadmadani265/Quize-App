import 'package:flutter/material.dart';
import 'package:simple_quize_app/models/quize_model.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({
    super.key,
  });

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int indexQ = 0;
  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return (indexQ < list.length)
        ? SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('assets/images/quiz_image.jpg'),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Quesion ${indexQ + 1} of ${list.length}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 500,
                    child: Text(
                      list[indexQ].question,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                const SizedBox(
                  height: 36,
                ),
                Column(
                  children: List.generate(
                    list[indexQ].options.length,
                    (index) {
                      return Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              //backgroundColor: const Color(0xff5cecfd),
                              minimumSize: const Size(double.infinity, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                if (list[indexQ].answer ==
                                    list[indexQ].options[index]) {
                                  correctAnswer++;
                                }

                                indexQ++;
                              });
                            },
                            child: Text(
                              list[indexQ].options[index],
                              style: const TextStyle(
                                color: Color.fromARGB(255, 6, 0, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        : (correctAnswer >= list.length / 2)
            ? Column(
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/images/congratulatio.jpg",
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('Congratulations!.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w800)),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Your score is $correctAnswer out of ${list.length}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400)),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff5cecfd),
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {
                          setState(() {
                            indexQ = 0;
                            correctAnswer = 0;
                            Navigator.pushNamed(context, '/');
                          });
                        },
                        child: const Text(
                          'Try Again',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                ],
              )
            : Column(
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/images/download.jpg",
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('loooosy',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w800)),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Your score is $correctAnswer out of ${list.length}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400)),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff5cecfd),
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {
                          setState(() {
                            indexQ = 0;
                            correctAnswer = 0;
                            Navigator.pushNamed(context, '/');
                          });
                        },
                        child: const Text(
                          'Try Again',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                ],
              );
  }
}
