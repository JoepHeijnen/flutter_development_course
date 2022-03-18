import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finstagram/services/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final FirebaseService _firebaseService =
      GetIt.instance.get<FirebaseService>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _profileImageWidget(),
          _postsGridView(),
        ],
      ),
    );
  }

  Widget _profileImageWidget() {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 32, top: 16),
        width: 125,
        height: 125,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(125),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(_firebaseService.currentUser!['image'])),
        ),
      ),
    );
  }

  Widget _postsGridView() {
    return Expanded(
      child: StreamBuilder<QuerySnapshot>(
        stream: _firebaseService.getPostsForUser(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List _posts = snapshot.data!.docs.map((e) => e.data()).toList();

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
              ),
              itemCount: _posts.length,
              itemBuilder: (_context, _index) {
                Map _post = _posts[_index];
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        _post['image'],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
