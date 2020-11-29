import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int reSultScore;
  final Function resetQuiz;
  Result(this.reSultScore, this.resetQuiz);
  String get resultPhrase {
    String resultText;
    if (reSultScore == 0) {
      resultText = "You know nothing!";
    } else if (reSultScore % 2 == 1) {
      resultText = "You're gayyy!";
    } else if (reSultScore < 30) {
      resultText = "You almost got it!";
    } else
      resultText = "Ờ mây zình, gút chóp em";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
                onPressed: resetQuiz,
                child: Text("Reset Quiz!"),
                textColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}
