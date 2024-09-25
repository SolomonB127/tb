import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TripBudgeter'),
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu))),
      ),
      // backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Row(
              children: [
                DrawerHeader(child: Image.asset("assets/Images/Ellipse 2.png")),
                const Column(
                  children: [
                    Text(
                      "UserName",
                      textAlign: TextAlign.left,
                    ),
                    Text("Some Text"),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
