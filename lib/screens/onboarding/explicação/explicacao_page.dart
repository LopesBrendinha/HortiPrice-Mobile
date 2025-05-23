import 'package:flutter/material.dart';
import 'package:hortipricemobile/components/view_explicacao/explicacao_view.dart';

class ExplicacaoPage extends StatefulWidget {
  const ExplicacaoPage({super.key});

  @override
  State<ExplicacaoPage> createState() => _ExplicacaoPageState();
}

class _ExplicacaoPageState extends State<ExplicacaoPage> {
  int selectPage = 0;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      selectPage = controller.page?.round() ?? 0;
      setState(() {});
    });
  }

  List pageList = [
    {
      'title': "Bem-vindo ao HortiPrice Mobile!",
      'subtitle':
          "Aqui você pode calcular preços de venda justos e eficientes para seus produtos agrícolas. Vamos começar?",
      'image': "./assets/imgs/img_1.png",
    },
    {
      'title': "Como calculamos os preços?",
      'subtitle':
          "Usamos três métodos de precificação para garantir valores justos: Custeio ABC, Custeio por Absorção e Custeio Variável.",
      'image': "./assets/imgs/img_2.png",
    },
    {
      'title': "Configure sua produção",
      'subtitle':
          "Adicione produtos, insira seus custos e defina sua margem de lucro. Assim, seu preço será calculado com precisão.",
      'image': "./assets/imgs/img_3.png",
    },
    {
      'title': "Simule e visualize seus preços",
      'subtitle':
          "Compare diferentes cenários, ajuste valores e descubra o preço ideal para seus produtos agrícolas.",
      'image': "./assets/imgs/img_4.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    var midia = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 247, 1),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
              controller: controller,
              itemCount: pageList.length,
              itemBuilder: (context, index) {
                var pObj = pageList[index] as Map? ?? {};
                return ExplicacaoView(pObj: pObj);
              }),
          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(
                    color: Color.fromRGBO(36, 138, 92, 1),
                    value: (selectPage + 1) / 4,
                    strokeWidth: 2,
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: <Color>[
                        Color.fromRGBO(48, 219, 91, 1),
                        Color.fromRGBO(36, 138, 92, 1)
                      ]),
                      borderRadius: BorderRadius.circular(35)),
                  child: IconButton(
                    icon: Icon(
                      Icons.navigate_next,
                      color: Color.fromRGBO(242, 242, 247, 1),
                    ),
                    color: Color.fromRGBO(36, 138, 92, 1),
                    onPressed: () {
                      if (selectPage < 3) {
                        selectPage = selectPage + 1;
                        controller.animateToPage(selectPage,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.bounceInOut);
                      } else {
                        Navigator.popAndPushNamed(context, "/login");
                      }
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
