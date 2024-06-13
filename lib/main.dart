//initial import, this is the entry point of the application
import 'package:flutter/material.dart';

//main function is the starting point of the application
void main() {
  runApp(MyApp());
}

//MyApp is a class that extends StateFULWidget

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//_MyAppState is a class that extends State
class _MyAppState extends State<MyApp> {
     double _composicao = 0;
     int _ecogenicidade = 0;
     double _formato = 0;
     double _margins = 0;   
     double _focos1 = 0;
      double _focos2 = 0;
       double _focos3 = 0;
        double _focos4 = 0;
     
 

  @override
  Widget build(BuildContext context) {
     
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Calculadora TIRADS'),
          foregroundColor: Colors.white,
          toolbarHeight: 100.0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                // primeiro quesito - composition

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Composição do Nódulo:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container( 
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RadioMenuButton(
                      value: 0.0,
                      groupValue: _composicao,
                      onChanged: (double? value) {
                        setState(() {
                          _composicao = value!;
                        });
                      },
                      child: const Text('Cístico ou Predominantemente cístico'),
                    ),
                    // make more 3 radiomenubuttons
                    RadioMenuButton(
                      value: 0.1,
                      groupValue: _composicao,
                      onChanged: (double? value) {
                        setState(() {
                          _composicao = value!;
                        });
                      },
                      child: const Text('Espongiforme'),
                    ),
                    RadioMenuButton(
                      value: 1.0,
                      groupValue: _composicao,
                      onChanged: (double? value) {
                        setState(() {
                          _composicao = value!;
                        });
                      },
                      child: const Text('Misto (sólido e cístico)'),
                    ),
                    RadioMenuButton(
                      value: 2.0,
                      groupValue: _composicao,
                      onChanged: (double? value) {
                        setState(() {
                          _composicao = value!;
                        });
                      },
                      child: const Text(
                        'Sólido ou Predominantemente sólido',
                      ),
                    ),
                
                  ],),
                  ),


                    Container(
                      // make a radius border
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        'Ecogenicidade:',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RadioMenuButton(
                            value: 0,
                            groupValue: _ecogenicidade,
                            onChanged: (int? value) {
                              setState(() {
                                _ecogenicidade= value!;
                              });
                            },
                            child: const Text(
                                'Anecóico'),
                          ),
                          // make more 3 radiomenubuttons
                          RadioMenuButton(
                            value: 1,
                            groupValue: _ecogenicidade,
                            onChanged: (int? value) {
                              setState(() {
                                _ecogenicidade = value!;
                              });
                            },
                            child: const Text('Isoecóico ou Hiperecóico'),
                          ),
                          RadioMenuButton(
                            value: 2,
                            groupValue: _ecogenicidade,
                            onChanged: (int? value) {
                              setState(() {
                                _ecogenicidade = value!;
                              });
                            },
                            child: const Text('Hipoecóico'),
                          ),
                          RadioMenuButton(
                            value: 3,
                            groupValue: _ecogenicidade,
                            onChanged: (int? value) {
                              setState(() {
                                _ecogenicidade = value!;
                              });
                            },
                            child: const Text(
                              'Muito Hipoecóico',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // make a radius border
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        'Forma:',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RadioMenuButton(
                            value: 0.0,
                            groupValue: _formato,
                            onChanged: (double? value) {
                              setState(() {
                                _formato= value!;
                              });
                            },
                            child: const Text(
                                'Mais Larga da que alta'),
                          ),
                          // make more 3 radiomenubuttons
                          RadioMenuButton(
                            value: 3.0,
                            groupValue: _formato,
                            onChanged: (double? value) {
                              setState(() {
                                _formato = value!;
                              });
                            },
                            child: const Text('Mais alta do que larga'),
                          ),
                          
                        ],
                      ),
                    ),
                    Container(

                // primeiro quesito - composition

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Margens',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container( 
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RadioMenuButton(
                      value: 0.0,
                      groupValue: _margins,
                      onChanged: (double? value) {
                        setState(() {
                          _margins = value!;
                        });
                      },
                      child: const Text('Suaves'),
                    ),
                    // make more 3 radiomenubuttons
                    RadioMenuButton(
                      value: 0.1,
                      groupValue: _margins,
                      onChanged: (double? value) {
                        setState(() {
                          _margins = value!;
                        });
                      },
                      child: const Text('Mal definidas'),
                    ),
                    RadioMenuButton(
                      value: 1.0,
                      groupValue: _margins,
                      onChanged: (double? value) {
                        setState(() {
                          _margins = value!;
                        });
                      },
                      child: const Text('Lobuladas ou irregulares'),
                    ),
                    RadioMenuButton(
                      value: 2.0,
                      groupValue: _margins,
                      onChanged: (double? value) {
                        setState(() {
                          _margins = value!;
                        });
                      },
                      child: const Text(
                        'Extensão extra-tireoideana',
                      ),
                    ),
                
                  ],),
                  ),
                  Container(

                // primeiro quesito - composition

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Focos ecogênicos (Escolha todos que se aplicarem):',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container( 
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RadioMenuButton(
                      value: 0.0,
                      groupValue: _focos1,
                      onChanged: (double? value) {
                        setState(() {
                          _focos1 = value!;
                        });
                      },
                      child: const Text('Nenhum ou cauda de cometa'),
                    ),
                    // make more 3 radiomenubuttons
                    RadioMenuButton(
                      value: 1.0,
                      groupValue: _focos2,
                      onChanged: (double? value) {
                        setState(() {
                          _focos2 = value!;
                        });
                      },
                      child: const Text('Microcalcificações'),
                    ),
                    RadioMenuButton(
                      value: 2.0,
                      groupValue: _focos3,
                      onChanged: (double? value) {
                        setState(() {
                          _focos3 = value!;
                        });
                      },
                      child: const Text('Calcificação periférica'),
                    ),
                    RadioMenuButton(
                      value: 3.0,
                      groupValue: _focos4,
                      onChanged: (double? value) {
                        setState(() {
                          _focos4 = value!;
                        });
                      },
                      child: const Text(
                        'Focos ecogenicos puntiformes',
                      ),
                    ),
                
                  ],),
                  ),
                  ],
                ),
              ),
            
          ),
          
      
    );
  }
}
