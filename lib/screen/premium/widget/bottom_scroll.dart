
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/data_source.dart';
import '../../../utils/style.dart';
import 'chart_todo.dart';
import 'item_plant.dart';

class BottomScroll extends StatelessWidget {
  const BottomScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.25,
      minChildSize: 0.25,
      snapSizes: const [0.25, 1],
      snap: true,
      builder: (context, scrollController){
        return SingleChildScrollView(
            controller: scrollController,
            physics: const ClampingScrollPhysics(),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 30,),
                        Text("Join 200,000+ plant parents", style: titleItemTodoStyle,),
                        Icon(Icons.keyboard_arrow_up, size: 30,),
                      ],
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      decoration: const BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadiusDirectional.all(Radius.elliptical(100, 50)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.greenAccent,
                              spreadRadius: 5,
                              blurRadius: 2,
                              offset: Offset(0, 0),
                            )
                          ]
                      ),
                      child: const Text("Start Free Trial", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
                  ),
                  const Text("7 days free, then \$29.999 per year", style: greyHeader),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dataPlant.length,
                    itemBuilder: (context, index) => ItemPlant(dataPlant[index]),
                    separatorBuilder: (context, index) => const SizedBox(height: 20,),
                  ),
                  Container(
                      height: 70,
                      width: 70,
                      margin: const EdgeInsets.all(20),
                      child: Image.network("https://cdn.pixabay.com/photo/2017/10/14/15/51/orange-2850848_1280.png")
                  ),
                  const Text("Start Free 7-day Trial", style: bodyTitleStyle,),
                  ChartTodo(todos: dataTodo,),
                  const SizedBox(height: 10,),
                ],
              ),
            )
        );
      },
    );
  }
}
