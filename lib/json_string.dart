import 'package:flutter/material.dart';
import 'data.dart';

class JsonString extends StatefulWidget {
  const JsonString({Key? key}) : super(key: key);

  @override
  State<JsonString> createState() => _JsonStringState();
}

class _JsonStringState extends State<JsonString> {
  List<Map<String, dynamic>>? hits;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initData();
  }

  Future initData() async {
    hits = await getHits();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            '이미지 검색 앱',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  //border color 적용 안됨
                  //border: OutlineInputBorder(borderSide: Color(0xFF0000FF)),  //border color 적용 안됨
                  labelText: 'Search',
                  suffixIcon: Icon(Icons.search_outlined),
                ),
              ),
            ),
            hits == null
            ? const CircularProgressIndicator()
            : GridView.builder(
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                    ),
                itemCount: hits!.length,
                //itemCount: 50, //임의로 테스트
                itemBuilder: (BuildContext context, index) {
                  Map<String, dynamic> image = hits![index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        image['previewURL'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
            ),
          ],
        )

        /*Expanded(
            child:
            ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                Map<String, dynamic> image = images![index];

                return Image.network(image['previewURL']);
              },
            ),*/
        );
  }

  Future<List<Map<String, dynamic>>> getHits() async {
    await Future.delayed(const Duration(seconds: 2));
    List<Map<String, dynamic>> hits = data['hits'];

    return hits;
  }
}
