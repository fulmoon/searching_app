import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searching_app/data/model/photo.dart';
import 'package:searching_app/ui/main_action.dart';
import 'package:searching_app/ui/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _controller = TextEditingController();

  //String _query = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '이미지 검색 앱',
          style: GoogleFonts.lato(),
        ),
        //backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              viewModel.onAction(MainAction.addAction());
            },
            icon: const Icon(Icons.add),
          ),
        ],
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
                    // context.read<MainViewModel>().fetchImages(_controller.text);
                    context.read<MainViewModel>().onAction(MainAction.getImages(_controller.text));
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
              onSubmitted: (String value) async {
                // context.read<MainViewModel>().fetchImages(_controller.text);
                context.read<MainViewModel>().onAction(MainAction.getImages(_controller.text));
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: viewModel.state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            orientation == Orientation.portrait ? 2 : 4,
                        childAspectRatio: 1,
                      ),
                      children: viewModel.state.photos.map((Photo image) {
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
