import 'package:flutter/material.dart';
import 'package:training/details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                height: 30,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < details.length; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              index = i;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: index == i ? Colors.red : Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              details[i],
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            switch (index) {
              0 => Text("${details[index]} الطلبات "),
              1 => Text(" الطلبات ${details[index]}"),
              2 => Text(" الطلبات ${details[index]}"),
              3 => Text(" الطلبات ${details[index]}"),
              _ => Text(" الطلبات ${details[index]}"),
            }
          ],
        ),
      ),
    );
  }
}
