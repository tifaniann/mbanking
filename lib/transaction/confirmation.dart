import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbanking_ui/transaction/success.dart';
import 'package:mbanking_ui/transaction/transaksi.dart';

class KonfirmasiVA extends StatefulWidget {
  const KonfirmasiVA({super.key});

  @override
  State<KonfirmasiVA> createState() => _KonfirmasiVAState();
}

class _KonfirmasiVAState extends State<KonfirmasiVA> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(111, 96, 226, 0.91),
            Color.fromRGBO(79, 67, 172, 1),
            Color.fromRGBO(0, 26, 64, 1),
          ],
          begin: FractionalOffset(1.0, 1.0),
        ),
      ),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset('assets/logo/transaksiLogo.png'),
                    width: 200,
                    height: 170,
                  ),
                  new GestureDetector(
                    onTap: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Transaksi()))
                    },
                    child: Container(
                      child: Icon(
                        Icons.exit_to_app_rounded,
                        size: 50,
                      ),
                      height: 170,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 10),
                        child: Text(
                          "Nominal Transfer : ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            hintText: "75000",
                            hintStyle: TextStyle(
                                color:
                                const Color.fromARGB(255, 167, 159, 168)),
                            //-------------------------------------
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 5, //<-- SEE HERE
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            //--------------------------------------
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Detail : ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          top: BorderSide(
                            width: 2,
                            color: Color.fromARGB(197, 179, 176, 176),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Nomor Rekening:",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    Text(
                                      "2384283457298472",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Nomor VA:",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    Text(
                                      "32423423423423",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Biaya Admin:",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    Text(
                                      "Rp0",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                    Text(
                                      "Rp-",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: new GestureDetector(
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sukses())),
                },
                child: Container(
                  width: 100,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Send",
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(color: Color.fromRGBO(111, 96, 226, 0.91)),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
