import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class DTCScreen extends StatelessWidget {
  const DTCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.black,
            )),
        const SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            )),
        const SizedBox(
          width: 10,
        )
      ]),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search Product',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: (1 / 0.22),
                clipBehavior: Clip.antiAlias,
                children: List.generate(10, (index) {
                  return GestureDetector(
                    child: const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Code :'),
                              Text('Mistakes :'),
                            ]),
                      ),
                    ),
                  );
                })),
          )
        ]),
      ),
    );
  }
}
