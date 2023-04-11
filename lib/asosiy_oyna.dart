import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class AsosiyOyna extends StatefulWidget {
  @override
  State<AsosiyOyna> createState() => _AsosiyOynaState();
}

class _AsosiyOynaState extends State<AsosiyOyna> {
  List tashhis = ["Сарамас","Периостит","Актиномикоз", "Йирингли лимфаденит", "Аденофлегмона", "Лимфаегит", "Фурункул", "Карбункул"];
  List<String> simptomplar = [
    'Шиш',
    "Махаллий температура кўтарилиши ",
    'Оғриқ',
    "Қизариш",
    "Функция бузилиши",
    "Флюктуация белгиси",
    "Капалак симптоми",
    "Инфекция кириш дарвозаси булишлиги",
    'Интоксикация',
    'Гемограммада лейкоцитоз, нейтрофиллёз, ЭЧТ ошиши ',
    'Бош оғриги, бош айланиши  ',
    'Тери  қопламларини оқариши ',
    'Умумий температура кутарилиши (гектик)',
    'Ҳансираш ва юзида цианоз  ',
    'Тиш милкларини гиперплазияси ва бодомча безларни катталашиши ',
    'Тез чарчаш,  иштахани пастлиги',
    'Оссалгия, буғимларда оғриқ ',
  ];

  List bir = [
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
  ];

  List ikki = [
    1,
    1,
    0,
    1,
    0,
    1,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    1,
  ];

  List uch = [
    1,
    0,
    1,
    1,
    0,
    0,
    0,
    1,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
  ];

  List tort = [
    1,
    1,
    1,
    1,
    1,
    1,
    0,
    0,
    1,
    1,
    1,
    1,
    1,
    1,
    0,
    1,
    1,
  ];

  List besh = [
    1,
    1,
    0,
    1,
    1,
    1,
    0,
    0,
    1,
    1,
    1,
    1,
    1,
    1,
    0,
    0,
    1,
  ];

  List olti = [
    1,
    1,
    1,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
  ];

  List yetti = [
    1,
    1,
    0,
    1,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    1,
  ];

  List sakkiz = [
    1,
    1,
    0,
    1,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    1,
  ];

  List natija = [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
  ];

  List natija1 = [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
  ];

  sikl() {
    setState(
      () {
        String shakli = '';
        String txt = '';
        int m = 0;
        int a1 = 0, a2 = 0, a3 = 0, a4 = 0, a5 = 0, a6 = 0, a7 = 0, a8 = 0;
        for (int i = 0; i < natija.length; i++) {
          if (natija[i] != null) {
            m++;
          }
          if (bir[i] == natija[i]) {
            a1++;
          }
          if (ikki[i] == natija[i]) {
            a2++;
          }
          if (uch[i] == natija[i]) {
            a3++;
          }
          if (tort[i] == natija[i]) {
            a4++;
          }
          if (besh[i] == natija[i]) {
            a5++;
          }
          if (olti[i] == natija[i]) {
            a6++;
          }
          if (yetti[i] == natija[i]) {
            a7++;
          }
          if (sakkiz[i] == natija[i]) {
            a8++;
          }
        }
        if (a1 == bir.length) {
          shakli = "To'g'ri";
          txt = "Сарамас";
        } else if (a2 == ikki.length) {
          shakli = "To'g'ri";
          txt = "Периостит";
        } else if (a3 == uch.length) {
          shakli = "To'g'ri";
          txt = "Актиномикоз";
        } else if (a4 == tort.length) {
          shakli = "To'g'ri";
          txt = "Йирингли лимфаденит";
        } else if (a5 == besh.length) {
          shakli = "To'g'ri";
          txt = "Аденофлегмона";
        } else if (a6 == olti.length) {
          txt = "Лимфаегит";
          shakli = "To'g'ri";
        } else if (a7 == yetti.length) {
          txt = "Фурункул";
          shakli = "To'g'ri";
        } else if (a8 == sakkiz.length) {
          shakli = "To'g'ri";
          txt = "Карбункул";
        } else if (m != bir.length) {
          shakli = "Xato";
          txt = "Кечирасиз! Қайсидир симптоплар қолиб кетган";
        } else {
          shakli = "Xato";
          txt = "Кечирасиз! Диагнозлар тўғри келмади";
        }
        void successShowAlter() {
          QuickAlert.show(
              context: context, text: "$txt", type: QuickAlertType.success);
        }

        void errorShowAlter() {
          QuickAlert.show(
            context: context,
            text: "$txt",
            type: QuickAlertType.error,
          );
        }

        if (shakli == "To'g'ri") {
          successShowAlter();
        } else {
          errorShowAlter();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Симптомлар"),
        leading: Image(
          image: AssetImage("images/med4.png"),
        ),
        actions: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.redAccent[700],
            ),
            child: TextButton(
              onPressed: () {
                sikl();
                natija.clear();
                natija.addAll(natija1);
              },
              child: Text(
                "Run",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
          Image(image: AssetImage('images/med3.png'),),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              itemCount: tashhis.length,
              itemBuilder: (context, index) => Container(
                child: Card(
                  child: ListTile(
                    title: Text("${tashhis[index]}"),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: simptomplar.length,
              itemBuilder: (context, index) => Card(
                color: Colors.cyanAccent,
                child: ListTile(
                  title: Text(simptomplar[index]),
                  trailing: SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          color: Colors.greenAccent,
                          child: TextButton(
                              onPressed: () {
                                natija[index] = 1;
                              },
                              child: Text("1")),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          color: Colors.greenAccent,
                          child: TextButton(
                              onPressed: () {
                                natija[index] = 0;
                              },
                              child: Text("0")),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
