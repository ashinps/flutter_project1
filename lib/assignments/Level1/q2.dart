import 'package:flutter/material.dart';
class Quizapp extends StatefulWidget {
  const Quizapp({super.key});

  @override
  State<Quizapp> createState() => _QuizappState();
}



class _QuizappState extends State<Quizapp> {

    calculateScore() {
    int score = 0;
    if (lion == 'carnivore') {
      score++;
    }
    if (giraffe == 'herbivore') {
      score++;
    }
    if (elephant == 'herbivore') {
      score++;
    }
    if (tiger == 'carnivore') {
      score++;
    }
    if (bear == 'omnivore') {
      score++;
    }

    return score;
  }

  String? lion;
  String? giraffe;
  String? elephant;
  String? tiger;
  String? bear;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Select correct answers from below:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),


            //Question no 1
            const SizedBox(height: 25,),
            Column(
              children: [
              const Text("Lion is:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
               Row (
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 Radio<String>(
                  value: 'carnivore',
                  groupValue: lion,
                  onChanged: (value){
                    setState((){
                      lion = value;
                    });
                  },
                ),
                const Text('Carnivore'),
                   const SizedBox(width: 20,),


                   Radio<String>(
                     value: 'herbivore',
                     groupValue: lion,
                     onChanged: (value){
                       setState((){
                         lion = value;
                       });
                     },
                   ),const Text('Herbivore'),
                   const SizedBox(width: 20,),



                   Radio<String>(
                     value: 'omnivore',
                     groupValue: lion,
                     onChanged: (value){
                       setState((){
                         lion = value;
                       });
                     },
                   ),const Text('Omnivore'),
                   const SizedBox(width: 20,),
                 ],

               )
              ],
            ),

            //Question no 2
            const SizedBox(height: 20,),
            Column(
              children: [
                const Text("Giraffe is:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio<String>(
                        value: 'carnivore',
                        groupValue: giraffe,
                        onChanged: (value){
                          setState((){
                            giraffe = value;
                          });
                        },
                      ),
                      const Text('Carnivore'),
                      const SizedBox(width: 20,),


                      Radio<String>(
                        value: 'herbivore',
                        groupValue: giraffe,
                        onChanged: (value){
                          setState((){
                            giraffe = value;
                          });
                        },
                      ),const Text('Herbivore'),
                      const SizedBox(width: 20,),



                      Radio<String>(
                        value: 'omnivore',
                        groupValue: giraffe,
                        onChanged: (value){
                          setState((){
                            giraffe = value;
                          });
                        },
                      ),const Text('Omnivore'),
                      const SizedBox(width: 20,),

                    ])
              ],
            ),

            //Question no 3
            const SizedBox(height: 20,),
            Column(
              children: [
                const Text("Elephant is:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio<String>(
                        value: 'carnivore',
                        groupValue: elephant,
                        onChanged: (value){
                          setState((){
                            elephant = value;
                          });
                        },
                      ),
                      const Text('Carnivore'),
                      const SizedBox(width: 20,),


                      Radio<String>(
                        value: 'herbivore',
                        groupValue: elephant,
                        onChanged: (value){
                          setState((){
                            elephant = value;
                          });
                        },
                      ),const Text('Herbivore'),
                      const SizedBox(width: 20,),



                      Radio<String>(
                        value: 'omnivore',
                        groupValue: elephant,
                        onChanged: (value){
                          setState((){
                            elephant = value;
                          });
                        },
                      ),const Text('Omnivore'),
                      const SizedBox(width: 20,),

                    ])
              ],
            ),

            //Question no 4
            const SizedBox(height: 20,),
            Column(
              children: [
                const Text("Tiger is:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio<String>(
                        value: 'carnivore',
                        groupValue: tiger,
                        onChanged: (value){
                          setState((){
                            tiger = value;
                          });
                        },
                      ),
                      const Text('Carnivore'),
                      const SizedBox(width: 20,),


                      Radio<String>(
                        value: 'herbivore',
                        groupValue: tiger,
                        onChanged: (value){
                          setState((){
                            tiger = value;
                          });
                        },
                      ),const Text('Herbivore'),
                      const SizedBox(width: 20,),



                      Radio<String>(
                        value: 'omnivore',
                        groupValue: tiger,
                        onChanged: (value){
                          setState((){
                            tiger = value;
                          });
                        },
                      ),const Text('Omnivore'),
                      const SizedBox(width: 20,),

                    ])
              ],
            ),

            //Question no 5
            const SizedBox(height: 20,),
            Column(
              children: [
                const Text("Bear is:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio<String>(
                        value: 'carnivore',
                        groupValue: bear,
                        onChanged: (value){
                          setState((){
                            bear = value;
                          });
                        },
                      ),
                      const Text('Carnivore'),
                      const SizedBox(width: 20,),


                      Radio<String>(
                        value: 'herbivore',
                        groupValue: bear,
                        onChanged: (value){
                          setState((){
                            bear = value;
                          });
                        },
                      ),const Text('Herbivore'),
                      const SizedBox(width: 20,),



                      Radio<String>(
                        value: 'omnivore',
                        groupValue: bear,
                        onChanged: (value){
                          setState((){
                            bear = value;
                          });
                        },
                      ),const Text('Omnivore'),
                      const SizedBox(width: 20,),

                    ])
              ],
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: ()
    {
      int finalScore = calculateScore();
      showDialog(
        context: context,
        builder: (context){
        return AlertDialog(
        title: const Text('Result'),
        content: Text('Your score is $finalScore out of 5'),
          actions:[ElevatedButton(onPressed: (){
             Navigator.pop(context);
          }, child: const Text('OK'),),]
      );
      });

            }, child: const Text('Check Final Score')),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              setState(() {
                lion = null;
                giraffe = null;
                elephant = null;
                tiger = null;
                bear = null;
              });
            }, child: const Text('Reset Selection'))
          ],


      ),
    );
  }

}
