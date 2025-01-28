import 'package:flutter/material.dart';

class TopNavExample extends StatefulWidget {
  const TopNavExample({super.key});

  @override
  State<TopNavExample> createState() => _TopNavExampleState();
}

class _TopNavExampleState extends State<TopNavExample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Navigation Example'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.wallet),
              text: 'Accounts',
            ),
            Tab(
              icon: Icon(Icons.credit_card),
              text: 'Cards',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('Home Page'),
          ),
          Center(
            child: Text('Accounts Page'),
          ),
          Center(
            child: Text('Cards Page'),
          ),
        ],
      ),
    );
  }
}
