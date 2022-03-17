import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finstagram/services/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final FirebaseService _firebaseService =
      GetIt.instance.get<FirebaseService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _postsListView(),
    );
  }

  Widget _postsListView() {
    return StreamBuilder<QuerySnapshot>(
      stream: _firebaseService.getLatestPosts(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          List _posts = snapshot.data!.docs.map((e) => e.data()).toList();

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: _posts.length,
            itemBuilder: ((_context, index) {
              Map _post = _posts[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(_post['image']),
                  ),
                ),
              );
            }),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}
