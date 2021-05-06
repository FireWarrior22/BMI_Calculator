import 'bottom_button.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';
import 'Reusable_Card.dart';

class ResultsPage extends StatelessWidget {
    ResultsPage({@required this.interpretation, @required this. bmiResult, @required this.resultText});
    final String interpretation;
    final String bmiResult;
    final String resultText;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex:5,
            child: ReusableCard(
              colour:kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(),style: kResultStyle,),
                  Text(bmiResult, style: kBMIStyle),
                  Text(interpretation,style: kBMIResultStyle,textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(onTap:(){ Navigator.pop(context);}, buttonTitle:'RE-CALCULATE')
        ],
      ),
    );
  }
}
