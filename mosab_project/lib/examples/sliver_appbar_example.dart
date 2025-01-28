import 'package:flutter/material.dart';

class SliverAppBarExample extends StatelessWidget {
  const SliverAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // part 1
          SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 300,
            //backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar Example',
                  style: TextStyle(color: Colors.black)),
              background: Image.network(
                'https://media.istockphoto.com/id/1412131208/vector/abstract-orange-and-red-gradient-geometric-shape-circle-background-modern-futuristic.jpg?s=612x612&w=0&k=20&c=V_It1LyqTdBTOvCY8-CBOOj4bh4sFOq8im9gTlHUfPo=',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // part 2
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                return ListTile(
                  title: Text('youtube video  $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
