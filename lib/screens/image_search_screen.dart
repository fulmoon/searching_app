import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:searching_app/image_search_view_model.dart';
import 'package:searching_app/model/picture.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageSearchScreen extends StatefulWidget {
  const ImageSearchScreen({Key? key}) : super(key: key);

  @override
  State<ImageSearchScreen> createState() => _ImageSearchScreenState();
}

class _ImageSearchScreenState extends State<ImageSearchScreen> {
  final TextEditingController _controller = TextEditingController();
  //String _query = '';

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      final viewModel = context.read<ImageSearchViewModel>();
      viewModel.fetchImages('');
    });
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ImageSearchViewModel>();

    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        centerTitle:  true,
        title: Text(
          '이미지 검색 앱',
          style: GoogleFonts.lato(),
        ),
        //backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _controller,
              //obscureText: false, // 글자가 보이게(ture) 안보이게(false) - *** 로 표현
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    // color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                labelText: 'Search images',
                suffixIcon: IconButton(
                  onPressed: () {
                    //print('클릭 ${_controller.text}');
                    context.read<ImageSearchViewModel>().fetchImages(_controller.text);
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
              onSubmitted: (String value) async {
                context.read<ImageSearchViewModel>().fetchImages(_controller.text);
                // await showDialog<void>(
                //   context: context,
                //   builder: (BuildContext context) {
                //     return AlertDialog(
                //       title: const Text('Thanks!'),
                //       content: Text(
                //         'You typed "$value", which has length ${value.characters.length}.',
                //         style: GoogleFonts.lato(),
                //       ),
                //       actions: <Widget>[
                //         TextButton(
                //           onPressed: () {
                //             Navigator.pop(context);
                //             setState(() {
                //               _query = _controller.text;
                //             });
                //           },
                //           child: const Text('OK'),
                //         ),
                //       ],
                //     );
                //  },
                //);
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: viewModel.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
                        childAspectRatio: 1,
                      ),
                      children: viewModel.images.map((Picture image) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            image.previewURL,
                            fit: BoxFit.cover,
                          ),
                        );
                      }).toList(),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
