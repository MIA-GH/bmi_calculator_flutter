import 'package:bmi_calculator/global/constants.dart';
import 'package:bmi_calculator/widgets/BottomButton.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmiResults,
    @required this.resultText,
    @required this.interpretation,
  });

  final String bmiResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI Calculator"),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Results",
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  onPress: () {},
                  colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: kResultsTextStyle,
                      ),
                      Text(
                        bmiResults,
                        style: kBMITextStyle,
                      ),
                      Text(
                        "Normal BMI Range :\n  (18.5 - 25 kg/Squared Meter)",
                        style: kRangeTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        interpretation,
                        style: kBMIInterpretationTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            BottomButton(
              buttonTitle: "Re-Calculate",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
