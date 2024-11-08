import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: SinglePageApp(),
    );
  }
}

class SinglePageApp extends StatefulWidget {
  const SinglePageApp({super.key});

  @override
  State<SinglePageApp> createState() => _SinglePageAppState();
}

class _SinglePageAppState extends State<SinglePageApp> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'Email');
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Example 1 - Flutter on IOS'),
      ),
      child: SafeArea(  // Added SafeArea to prevent any system UI interference
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            SizedBox(
            width: 330, // Set desired width
            height: 150, // Set desired height
            child: Image.asset('assets/images/image2.jpg'),
            ),
            Expanded(
              child: GridView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(60),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                children: <Widget>[
                  CupertinoButton.filled(
                    onPressed: () {},
                    child: const Text('B1'),
                  ),
                  CupertinoButton.filled(
                    onPressed: () {},
                    child: const Text('B2'),
                  ),
                  CupertinoButton.filled(
                    onPressed: () {},
                    child: const Text('B3'),
                  ),
                  CupertinoButton.filled(
                    onPressed: () {},
                    child: const Text('B4'),
                  ),
                ],
              ),
            ),

            CupertinoTextField(
              controller: _textController,
              placeholder: 'Email',
              padding: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
