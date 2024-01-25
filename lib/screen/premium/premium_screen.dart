
import 'package:flutter/material.dart';
import 'package:material_timesheets/screen/premium/widget/bottom_scroll.dart';
import 'package:material_timesheets/screen/premium/widget/chart_todo.dart';
import 'package:material_timesheets/screen/premium/widget/header.dart';
import 'package:material_timesheets/screen/premium/widget/item_apple.dart';
import 'package:material_timesheets/screen/premium/widget/item_comment.dart';
import 'package:material_timesheets/screen/premium/widget/item_picture.dart';
import 'package:material_timesheets/screen/premium/widget/item_plant.dart';
import 'package:material_timesheets/screen/premium/widget/item_rate.dart';
import 'package:material_timesheets/utils/data_source.dart';
import 'package:material_timesheets/utils/style.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.cancel,
            color: Colors.black.withOpacity(0.2),
            size: 35,
          ),
        ),
      ),
      body: Container(
        color: Colors.brown.withOpacity(0.05),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize:MainAxisSize.min,
                children: [
                  const HeaderPremiumWidget(),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemApple(icon: Icons.apple, message: "App of the day"),
                      ItemApple(icon: Icons.apple, message: "Must-Have Lifestyle-app"),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 20,),
                  const Text("Worth every penny", style: headerTitleStyle,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Just a dime a day is all it takes to grow happy, healthy plants.",
                      textAlign: TextAlign.center,
                      style: greyHeader,
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 50,
                          child: ItemPicture(width: 210, height: 180, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEEEMU2QIuU8sr_ZWn06yTRSgwo2slfbOQ5v1dxO8IVHZG-xdf0M5ftHTxBdlZa4GygFU&usqp=CAU"),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 0,
                          child: ItemPicture(width: 150, height: 120, url: "https://kenh14cdn.com/thumb_w/660/2018/7/24/photo-1-15324186071991011666097.jpg"),
                        ),
                      ],
                    ),
                  ),
                  ItemRate(rate: 4.6),
                  const Text("4.8 Rating (5.5K Reviews)", style: titleItemTodoStyle,),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dataComment.length,
                    itemBuilder: (context, index) => ItemComment(dataComment[index], isBorder: index % 2 == 0,),
                    separatorBuilder: (context, index) => const SizedBox(height: 20,),
                  ),
                  const Text("🤔", style: TextStyle(fontSize: 40),),
                  const Text("Got a question?", style: titleItemTodoStyle,),
                  const Text("Pricing FAQ and Support", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.teal, letterSpacing: 1.1),),
                  const SizedBox(height: 30,),
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(20)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Already subscribed?"),
                        Text("Restore", style: TextStyle(color: Colors.teal),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Privacy Policy"),
                      SizedBox(width: 15,),
                      Text("●"),
                      SizedBox(width: 15,),
                      Text("Terms of Service",)
                    ],
                  ),
                  const SizedBox(height: 200,),
                ],
              ),
            ),
            const BottomScroll(),
          ],
        ),
      ),
    );
  }

}