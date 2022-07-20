import 'dart:convert';

import 'package:flutter/material.dart';
import 'model/picture.dart';
import 'model/images.dart';

class JsonString extends StatefulWidget {
  const JsonString({Key? key}) : super(key: key);

  @override
  State<JsonString> createState() => _JsonStringState();
}

class _JsonStringState extends State<JsonString> {
  TextEditingController _controller = TextEditingController();
  List<Picture> _images = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    initData();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future initData() async {
    _images = await getImages();

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            //Appbar와 겹쳐 보이는 문제 발생.
            child: TextField(
              //샘플코드
              controller: _controller,
              onSubmitted: (String value) async {
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Thanks!'),
                      content: Text(
                          'You typed "$value", which has length ${value.characters.length}.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            //const CircularProgressIndicator();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              obscureText: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                //border color 적용 안됨
                //border: OutlineInputBorder(borderSide: Color(0xFF0000FF)),
                labelText: 'Search',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemCount: _images.length,
              //itemCount: 50, //임의로 테스트
              itemBuilder: (BuildContext context, index) {
                Picture image = _images[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      image.previewURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<List<Picture>> getImages() async {
    await Future.delayed(const Duration(seconds: 2));

    String jsonString = images;

    Map<String, dynamic> json = jsonDecode(jsonString);
    Iterable hits = json['hits'];
    return hits.map((e) => Picture.fromJson(e)).toList();
  }
}
