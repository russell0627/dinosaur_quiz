import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class TypesOfDinosaursPage extends StatefulWidget {
  const TypesOfDinosaursPage({Key? key}) : super(key: key);

  @override
  State<TypesOfDinosaursPage> createState() => _TypesOfDinosaursPageState();
}

class _TypesOfDinosaursPageState extends State<TypesOfDinosaursPage> {
  late final Future<String> textFuture;

  @override
  void initState() {
    super.initState();

    textFuture = DefaultAssetBundle.of(context).loadString('assets/text/dinosaur_groups.md');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Groups of Dinosaurs"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: textFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }

              if (snapshot.hasData) {
                return Markdown(
                  data: snapshot.data!,
                );
              }

              return Container();
            }
          ),
        ),
      ),
    );
  }
}
