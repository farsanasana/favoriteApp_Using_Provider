import 'package:fevorites_app_usingprovider/Provider/favorite_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoritreProvider>(context);
    final words = provider.words;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
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
    );
  }
}
