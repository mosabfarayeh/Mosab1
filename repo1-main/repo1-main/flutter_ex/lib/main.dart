//import 'package:example_project/controllers/login_controller.dart';
import 'package:example_project/controllers/counter_controller.dart';
import 'package:example_project/controllers/login_controller.dart';
import 'package:example_project/controllers/swap_name_controller.dart';
import 'package:example_project/examples/media_query_example.dart';
import 'package:example_project/screens/all_in_one.dart';
import 'package:example_project/examples/counter_with_provider.dart';
import 'package:example_project/examples/login_with_provider.dart';
import 'package:example_project/examples/name_swap_with_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  //runApp(const MyApp());
  // runApp(
  //   ChangeNotifierProvider(
  //     create: (context) => CounterController(),
  //     child: const MyApp(),
  //   ),
  // );

  runApp(
    // MultiProvider is used to provide multiple providers
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => LoginController()),
      ChangeNotifierProvider(create: (context) => CounterController()),
      ChangeNotifierProvider(create: (context) => NameSwapController()),
    ], child: const MyApp()),
    // ChangeNotifierProvider(
    //   create: (context) => NameSwapController(),
    //   child: const MyApp(),
    // ),

    // djhfhdjfhdf
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ListView Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      // update home to AllInOneScreen
      home: AllInOneScreen(),
    );
  }
}

// ListViw
// class HomeApplication extends StatelessWidget {
//   HomeApplication({super.key});
//   // list of products with 50 items (server data)
//   final products = List.generate(50, (i) => 'Product $i');
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter ListView Widget'),
//       ),
//       // body column widget contains 3 children
//       body: Column(
//         children: [
//           // container red color
//           // expanded widget with SingleChildScrollView widget
//           // conainer red color
//           Container(
//             color: Colors.red,
//             height: 100,
//           ),
//           Expanded(
//             child: ListView.builder(
//                 itemCount: products.length,
//                 itemBuilder: (_, index) {
//                   return ListTile(
//                     title: Text(products[index]),
//                     onTap: () => print('Product $index'),
//                   );
//                 }),
//           ),
//           Container(
//             color: Colors.red,
//             height: 100,
//           )
//         ],
//       ),
//     );
//   }
// }
