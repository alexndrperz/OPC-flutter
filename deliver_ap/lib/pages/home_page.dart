import 'package:deliver_ap/components/custom_sliver_app_bar.dart';
import 'package:deliver_ap/components/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerboxIsScrolled) => [
              CustomSliverAppBar(title: Text("Title"), child: Text("Hello")),
            ],
        body: Container(color: Colors.blue),
      ),
    );
  }
}
