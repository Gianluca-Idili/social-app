import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firtst_flutter_project/components/like_button.dart';
import 'package:flutter/material.dart';

class BraffaPost extends StatefulWidget {
  final String message;
  final String user;
  final String postId;
  final List<String> likes;
  const BraffaPost({
    super.key,
    required this.message,
    required this.user,
    required this.postId,
    required this.likes,
  });

  @override
  State<BraffaPost> createState() => _BraffaPostState();
}

class _BraffaPostState extends State<BraffaPost> {
  //user
  final currentUser = FirebaseAuth.instance.currentUser!;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    isLiked = widget.likes.contains(currentUser.email);
  }

  //toggle like
  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });

    //acces  the document is Firebase
    DocumentReference postRef =
        FirebaseFirestore.instance.collection('User Posts').doc(widget.postId);

    if (isLiked) {
      //if the post is now liked, add the user's email to the 'likes' field
      postRef.update({
        'Likes': FieldValue.arrayUnion([currentUser.email])
      });
    } else {
      //if the post is now unliked, remove the user's email from the 'likes' field
      postRef.update({
        'Likes': FieldValue.arrayRemove([currentUser.email])
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(top: 25, left: 25, right: 25),
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Column(
            children: [
              //like button
              LikeButton(
                isLiked: isLiked,
                onTap: toggleLike,
              ),

              const SizedBox(height: 5),

              //like count
              Text(
                widget.likes.length.toString(),
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          //message and user email
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.user,
                style: TextStyle(color: Colors.grey[500]),
              ),
              const SizedBox(height: 10),
              Text(
                widget.message,
              ),
            ],
          )
        ],
      ),
    );
  }
}