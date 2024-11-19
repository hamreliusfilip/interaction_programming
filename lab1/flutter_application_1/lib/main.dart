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
      child: SafeArea(
        child: SingleChildScrollView( // Fix from presentation error (Warning for obstructed content)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 130,
                height: 90,
                child: Image.asset('assets/images/image2.jpg'),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: GridView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(1),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  children: <Widget>[
                    CupertinoButton.filled(
                      onPressed: () {},
                      child: const Text('Button'),
                    ),
                    CupertinoButton.filled(
                      onPressed: () {},
                      child: const Text('Button'),
                    ),
                    CupertinoButton.filled(
                      onPressed: () {},
                      child: const Text('Button'),
                    ),
                    CupertinoButton.filled(
                      onPressed: () {},
                      child: const Text('Button'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 20,
                  right: 20,
                ),
                child: CupertinoTextField(
                  controller: _textController,
                  placeholder: 'Email',
                  padding: const EdgeInsets.all(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
