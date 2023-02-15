import 'package:flutter/material.dart';
// import 'package:flutterapp/.dart';\
import 'package:thoughts/api.dart';

class apitest extends StatefulWidget {
  const apitest({super.key});

  @override
  State<apitest> createState() => _apitestState();
}

class _apitestState extends State<apitest> {
  Api test = Api();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: FutureBuilder<List>(
            future: test.buttonPressed(),
            builder: (context, snapshot) {
              print(snapshot.hasData);
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i) {
                      return Card(
                        child: ListTile(
                          title: Text(
                            snapshot.data![i]['username'],
                            style: TextStyle(fontSize: 30.0),
                          ),
                          subtitle: Text(
                            snapshot.data![i]['email'],
                            style: TextStyle(fontSize: 30.0),
                          ),
                        ),
                      );
                    });
              } else {
                return const Center(
                  child: Text('No Data Found'),
                );
              }
            },
          ),
        ));
  }
}
