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
  
  double getResult () {
    return _composicao.toInt() + _ecogenicidade + _formato + _margins.toInt() + _focos2 + _focos3 + _focos4;
  }

  String gettirads () {
    var result = getResult();
    switch  (result) {
      case 0:
        return "TIRADS 1";
      case 1:
        return "TIRADS 2";
      case 2:
        return "TIRADS 2";
      case 3:
        return "TIRADS 3";
      case 4:
        return "TIRADS 4";
      case 5:
        return "TIRADS 4";
      case 6:
        return "TIRADS 4";
      default: 
        return "TIRADS 5";
          }
  }
  
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
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                      child: const Expanded(
                        child:
                      Text('Cístico ou Predominantemente cístico'
                      ,style: TextStyle(fontSize: 20),),),
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
                      child: const Text('Espongiforme',
                      style: TextStyle(fontSize: 20),),
                    ),
                    RadioMenuButton(
                      value: 1.0,
                      groupValue: _composicao,
                      onChanged: (double? value) {
                        setState(() {
                          _composicao = value!;
                        });
                      },
                      child: const Text('Misto (sólido e cístico)',
                      style: TextStyle(fontSize: 20),),
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
                        style: TextStyle(fontSize: 20),
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
                  'Ecogenicidade:',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                          _ecogenicidade = value!;
                        });
                      },
                      child: const Text('Anecóico',
                      style: TextStyle(fontSize: 20),),
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
                      child: const Text('Isoecóico ou Hiperecóico',
                      style: TextStyle(fontSize: 20),),
                    ),
                    RadioMenuButton(
                      value: 2,
                      groupValue: _ecogenicidade,
                      onChanged: (int? value) {
                        setState(() {
                          _ecogenicidade = value!;
                        });
                      },
                      child: const Text('Hipoecóico',
                      style: TextStyle(fontSize: 20),),
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
                        style: TextStyle(fontSize: 20),

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
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                          _formato = value!;
                        });
                      },
                      child: const Text('Mais Larga da que alta',
                      style: TextStyle(fontSize: 20),
                    ),),
                    // make more 3 radiomenubuttons
                    RadioMenuButton(
                      value: 3.0,
                      groupValue: _formato,
                      onChanged: (double? value) {
                        setState(() {
                          _formato = value!;
                        });
                      },
                      child: const Text('Mais alta do que larga',
                      style: TextStyle(fontSize: 20),),
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
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                      child: const Text('Suaves',
                      style: TextStyle(fontSize: 20),),
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
                      child: const Text('Mal definidas',
                      style: TextStyle(fontSize: 20),),
                    ),
                    RadioMenuButton(
                      value: 1.0,
                      groupValue: _margins,
                      onChanged: (double? value) {
                        setState(() {
                          _margins = value!;
                        });
                      },
                      child: const Text('Lobuladas ou irregulares',
                      style: TextStyle(fontSize: 20),),
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
                        style: TextStyle(fontSize: 20),
                      ),
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
                  'Focos ecogênicos (Escolha todos que se aplicarem):',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RadioMenuButton(
                      value: 1.0,
                      groupValue: _focos1,
                      toggleable: true,
                      onChanged: (double? value) {
                        setState(() {
                          if (value != null) {
                            _focos1 = value;
                          } else {
                            _focos1 = 0;
                          }
                        
                        });
                      },
                      child: const Text('Nenhum ou cauda de cometa',
                      style: TextStyle(fontSize: 20),),
                    ),
                    // make more 3 radiomenubuttons
                    RadioMenuButton(
                      value: 1.0,
                      groupValue: _focos2,
                      toggleable: true,
                      onChanged: (double? value) {
                        setState(() {
                          if (value != null) {
                            _focos2 = value;
                          } else {
                            _focos2 = 0;
                          }
                        
                        });
                      },
                      child: const Text('Microcalcificações',
                      style: TextStyle(fontSize: 20),),
                    ),
                    RadioMenuButton(
                      value: 2.0,
                      groupValue: _focos3,
                      toggleable: true,
                      onChanged: (double? value) {
                        setState(() {
                          if (value != null) {
                            _focos3 = value;
                          } else {
                            _focos3 = 0;
                          }
                        });
                      },
                      child: const Text('Calcificação periférica',
                      style: TextStyle(fontSize: 20),),
                    ),
                    RadioMenuButton(
                      value: 3.0,
                      groupValue: _focos4,
                      toggleable: true,
                      onChanged: (double? value) {
                        setState(() {
                          if (value != null) {
                            _focos4 = value;
                          } else {
                            _focos4 = 0;
                          }
                        });
                      },
                      child: const Text(
                        'Focos ecogenicos puntiformes',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            
            Container(
              color: Colors.lightBlue[50],
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 20),
              child: Text ("Resultado de pontos: ${getResult()}",
              style: const TextStyle(fontSize: 20),),
            ),
            Container(
              color: Colors.lightBlue[50],
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 20),
              child: Text ("${gettirads()}",
              style: const TextStyle(fontSize: 20),),
            )],
          ),
        ),
      ),
    );
  }
}
