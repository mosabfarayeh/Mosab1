// screens/landing_page.dart
import 'package:example_project/examples/bottom_nav_examples.dart';
import 'package:example_project/examples/botton_in_form_example.dart';
import 'package:example_project/examples/counter_example.dart';
import 'package:example_project/examples/counter_with_provider.dart';
import 'package:example_project/examples/form_example.dart';
import 'package:example_project/examples/listview_example.dart';
import 'package:example_project/examples/login_with_provider.dart';
import 'package:example_project/examples/media_query_example.dart';
import 'package:example_project/examples/name_swap_with_provider.dart';
import 'package:example_project/examples/onboarding_screen.dart';
import 'package:example_project/examples/simple_layout_page.dart';
import 'package:example_project/examples/single_child_scroll_view_example.dart';
import 'package:example_project/examples/sliver_appbar_example.dart';
import 'package:example_project/examples/wrap_example.dart';
import 'package:flutter/material.dart';
import '../examples/top_nav_example.dart';
import '../models/example_item.dart';

class AllInOneScreen extends StatelessWidget {
  AllInOneScreen({super.key});

  // A list of example items to display in the grid.
  final List<ExampleItem> examples = [
    ExampleItem(
      title: 'Simple Layout Page Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SimpleLayoutPage()),
        );
      },
    ),
    ExampleItem(
      title: 'Onboarding Screen Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const OnboaardingScreen()),
        );
      },
    ),
    ExampleItem(
      title: 'Login With Provider Example(SS)',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const LoginWithProvider()),
        );
      },
    ),
    ExampleItem(
      title: 'Swap Name With ProviderExample(SS)',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const NameSwapWithProvider()),
        );
      },
    ),
    ExampleItem(
      title: 'Counter With Provider Example(SS)',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const CounterWithProvider()),
        );
      },
    ),
    ExampleItem(
      title: 'Counter Example(SS)',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const CounterExample()),
        );
      },
    ),
    ExampleItem(
      title: 'Botton In Form Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const BottonInFormExample()),
        );
      },
    ),
    ExampleItem(
      title: 'Form Example1',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const FormExample()),
        );
      },
    ),
    ExampleItem(
      title: 'Tapbar Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const TopNavExample()),
        );
      },
    ),
    ExampleItem(
      title: 'Wrap Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => WrapExample()),
        );
      },
    ),
    ExampleItem(
      title: 'Sliver Appbar Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => SliverAppBarExample()),
        );
      },
    ),
    ExampleItem(
      title: 'Media Query Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => MediaQueryExample()),
        );
      },
    ),
    ExampleItem(
      title: 'SingleChildScrollView Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => SingleChildScrollViewExample()),
        );
      },
    ),
    ExampleItem(
      title: 'ListView Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ListViewExample()),
        );
      },
    ),
    ExampleItem(
      title: 'Bottom Nav Example',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => BottomNavExample()),
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //toolbarHeight: 100,
        //title: const Text('Landing Page'),
        flexibleSpace: FlexibleSpaceBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'All In One',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  // Make it circular
                  shape: BoxShape.circle,
                  // or use borderRadius if you prefer a slightly different shape
                  // borderRadius: BorderRadius.circular(25),

                  // Put your image here
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          background: Image.network(
            'https://media.istockphoto.com/id/1412131208/vector/abstract-orange-and-red-gradient-geometric-shape-circle-background-modern-futuristic.jpg?s=612x612&w=0&k=20&c=V_It1LyqTdBTOvCY8-CBOOj4bh4sFOq8im9gTlHUfPo=',
            fit: BoxFit.cover,
          ),
        ),
      ),
      /*
      SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 300,
            //backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Landing Page',
                  style: TextStyle(color: Colors.blue)),
              background: Image.network(
                'https://static.vecteezy.com/system/resources/previews/012/957/835/non_2x/flutter-comic-bright-template-with-speech-bubbles-on-colorful-frames-free-vector.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
       */
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: examples.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (MediaQuery.of(context).size.height > 402)
                ? 2
                : 4, // 2 items per row or 4 items per row
            crossAxisSpacing: 8.0, // horizontal spacing
            mainAxisSpacing: 8.0, // vertical spacing
            childAspectRatio: 0.75, // adjust to your liking
          ),
          itemBuilder: (BuildContext context, int index) {
            final example = examples[index];
            return Card(
              elevation: 2.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Image from network
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      // Make it circular
                      shape: BoxShape.circle,
                      // or use borderRadius if you prefer a slightly different shape
                      // borderRadius: BorderRadius.circular(25),
                      // Put your image here
                      image: DecorationImage(
                        image: NetworkImage(
                          example.imageUrl,
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  // Title
                  Text(
                    example.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // A button to navigate
                  ElevatedButton(
                    onPressed: () => example.onTap(context),
                    child: const Text('View Example'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
