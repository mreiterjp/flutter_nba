import 'package:flutter/material.dart';

class PageLoader extends StatelessWidget {
  const PageLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Loading data...',
            style: TextStyle(color: Theme.of(context).primaryColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}

class LoadingNextPageItem extends StatelessWidget {
  const LoadingNextPageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: const CircularProgressIndicator(),
    );
  }
}