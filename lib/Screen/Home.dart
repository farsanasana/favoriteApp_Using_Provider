import 'package:english_words/english_words.dart';
import 'package:fevorites_app_usingprovider/Provider/favorite_Provider.dart';
import 'package:fevorites_app_usingprovider/Screen/Favorite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final words = nouns.take(50).toList();
    final provider = Provider.of<FavoritreProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("English Words"),
      ),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          final word = words[index];
          return ListTile(
            title: Text(word),
            trailing: IconButton(
                onPressed: () {
                  provider.toggleFavorite(word);
                },
                icon: provider.isExist(word)
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : const Icon(Icons.favorite_border)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            final route = MaterialPageRoute(
              builder: (context) => const FavoriteScreen(),
            );
            Navigator.push(context, route);
          },
          label: const Text('Favorites')),
    );
  }
}
