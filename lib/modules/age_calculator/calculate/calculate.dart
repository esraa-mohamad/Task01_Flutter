import 'package:flutter/material.dart';
import 'package:task_02/componants/componants.dart';
import 'package:task_02/modules/age_calculator/arithmetic/law.dart';

// ignore: must_be_immutable
class AgeCalculate extends StatefulWidget {
   const AgeCalculate({Key? key}) : super(key: key);



  @override
  State<AgeCalculate> createState() => _AgeCalculateState();
}

class _AgeCalculateState extends State<AgeCalculate> {
  var yearControler =TextEditingController();
  int year = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.purple[300],
        leading: const CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage('assets/images/age.jpg'),
        ),
        title: const Text(
          'Age Calculator',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black45,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children:
            [
              const Image(
                width: double.infinity,
                  image: AssetImage('assets/images/ageing.jpg'),
              ),
              const SizedBox(
                height: 30,
              ),
              defaultTextForm(
                controller: yearControler,
                type: TextInputType.number,
                validate: (value){},
                prefix: Icons.calendar_month,
                label: 'Year',
                colorLabel: Colors.purple,
                colorBorder: Colors.purple,
              ),
              const SizedBox(
                height: 30,
              ),
              defaultButton(
                  width: 300,
                  backGround:Colors.purpleAccent,
                  function: ()
                  {
                    setState(() {
                      AgeCalculator(int.parse(yearControler.text));
                      year=AgeCalculator.age!;
                    });
                  },
                  text: 'Calculate',
              ),
              const SizedBox(
                height: 50,
              ),
               Text(
                'Age : $year',
                style: const TextStyle(
                  color: Colors.purple,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
