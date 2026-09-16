import 'package:flutter/material.dart';
import 'package:ok/ui/widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.menu),
        title: const Text("Home page"),
        actions: [TextButton(onPressed: () {}, child: Text("Login"))],
      ),
      body: ProductWidget(),
    );
  }
}
