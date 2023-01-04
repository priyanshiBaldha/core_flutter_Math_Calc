import 'package:flutter/material.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    ),
  );
}
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  State<Myapp> createState() => _MyappState();
}
class _MyappState extends State<Myapp> {
  var o = "";
  int i = 0;
  var clear = false;
  var operator = "";
  var firstoperand = "";
  var res = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child:Container(
              color: Color(0xff2E2D32),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.4,
                        child:Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 3.6,
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: Text("${firstoperand} ${operator} ${o}",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0x66FFFFFF),
                                ),),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: Text("${res}",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 1.19,
                                  height: 0.3,
                                  color: Color(0xff8D8D8D),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 50),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      o = "";
                                      firstoperand = "";
                                      operator = "";
                                      o = res;
                                      res = "";
                                    });
                                  },
                                  onDoubleTap: () {
                                    setState(() {
                                      o = "";
                                      firstoperand = "";
                                      operator = "";
                                      res = "";
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    alignment: Alignment.center,
                                    child: Text("AC",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xffFF5A66),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (o == "0") {
                                      } else {
                                        if (o == null) {
                                          o = "0";
                                        }
                                        else
                                        {
                                          o = o.substring(0, o.length - 1);
                                        }
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 77,
                                    alignment: Alignment.center,
                                    child: Icon(Icons.backspace_outlined,
                                      color: Color(0xff929292),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      res = (int.parse(o) / 100).toString();
                                      clear = true;
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 77,
                                    alignment: Alignment.center,
                                    child: Text("%",
                                      style: TextStyle(
                                        color: Color(0xff929292),
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      operator = "/";
                                      firstoperand = o;
                                      o = "";
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 77,
                                    alignment: Alignment.center,
                                    child: Text("/",
                                      style: TextStyle(
                                        color: Color(0xffFF5A66),
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if(o == "0"){
                                          o = "7";
                                        }else
                                        {
                                          o = o + "7";
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 74,
                                      alignment: Alignment.center,
                                      child: Text("7",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        ),),
                                      decoration: BoxDecoration(
                                        color: Color(0xff2E2D32),
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                       if(o == "0"){
                                          o = "8";
                                        }else
                                        {
                                          o = o + "8";
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 74,
                                      alignment: Alignment.center,
                                      child: Text("8",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),),
                                      decoration: BoxDecoration(
                                        color: Color(0xff2E2D32),
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child:InkWell(
                                    onTap: () {
                                      setState(() {
                                        if(o == "0"){
                                          o = "9";
                                        }else
                                        {
                                          o = o + "9";
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 74,
                                      alignment: Alignment.center,
                                      child: Text("9",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),),
                                      decoration: BoxDecoration(
                                        color: Color(0xff2E2D32),
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        operator = "*";
                                        firstoperand = o;
                                        o = "";
                                      });
                                    },
                                    child: Container(
                                      height: 74,
                                      alignment: Alignment.center,
                                      child: Text("*",
                                        style: TextStyle(
                                          color: Color(0xffFF5A66),
                                          fontSize: 20,
                                        ),),
                                      decoration: BoxDecoration(
                                        color: Color(0xff2E2D32),
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 1,
                                child:InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(clear){
                                        o = "0";
                                        clear = false;
                                      }
                                      if(o == "0"){
                                        o = "4";
                                      }else
                                      {
                                        o = o + "4";
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 74,
                                    alignment: Alignment.center,
                                    child: Text("4",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child:InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(o == "0"){
                                        o = "5";
                                      }else
                                      {
                                        o = o + "5";
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 74,
                                    alignment: Alignment.center,
                                    child: Text("5",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child:InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(o == "0"){
                                        o = "6";
                                      }else
                                      {
                                        o = o + "6";
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 74,
                                    alignment: Alignment.center,
                                    child: Text("6",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      operator = "-";
                                      firstoperand = o;
                                      o = "";
                                    });
                                  },
                                  child: Container(
                                    height: 73,
                                    alignment: Alignment.center,
                                    child: Text("_",
                                      style: TextStyle(
                                        color: Color(0xffFF5A66),
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(o == "0"){
                                        o = "1";
                                      }else
                                      {
                                        o = o + "1";
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 74,
                                    alignment: Alignment.center,
                                    child: Text("1",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child:InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(o == "0"){
                                        o = "2";
                                      }else
                                      {
                                        o = o + "2";
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 74,
                                    alignment: Alignment.center,
                                    child: Text("2",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child:InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(o == "0"){
                                        o = "3";
                                      }else
                                      {
                                        o = o + "3";
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 74,
                                    alignment: Alignment.center,
                                    child: Text("3",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      operator = "+";
                                      firstoperand = o;
                                      o = "";
                                    });
                                  },
                                  child: Container(
                                    height: 74,
                                    alignment: Alignment.center,
                                    child: Text("+",
                                      style: TextStyle(
                                        color: Color(0xffFF5A66),
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 1,
                                child:InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(o == "0"){
                                      }else
                                      {
                                        o = o + "00";
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 74,
// width: 77,
                                    alignment: Alignment.center,
                                    child: Text("00",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child:InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(o == "0"){
                                      }else
                                      {
                                        o = o + "0";
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 74,
                                    alignment: Alignment.center,
                                    child: Text("0",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(i != "0"){
                                      }else
                                      {
                                        o = o + ".";
                                        i++;
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 74,
                                    alignment: Alignment.center,
                                    child: Text(".",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xff2E2D32),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      var Num1 = int.parse(firstoperand);
                                      var Num2 = int.parse(o);
                                      switch(operator){
                                        case '+':
                                          res = (Num1 + Num2).toString();
                                          break;
                                        case '-':
                                          res = (Num1 - Num2).toString();
                                          break;
                                        case '*':
                                          res = (Num1 * Num2).toString();
                                          break;
                                        case '/':
                                          res = (Num1 / Num2).toString();
                                          break;
                                        default:
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 80,
                                    alignment: Alignment.center,
                                    child: Text("=",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),),
                                    decoration: BoxDecoration(
                                      color: Color(0xffFF5A66),
                                      borderRadius: BorderRadius.circular(150),
                                    ), ), ), ), ], ), ], ), ), ), ], ), ), ), ], ), ); }
}