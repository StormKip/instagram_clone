import 'post.dart';
import 'package:flutter/material.dart';

class User {
  String username;
  AssetImage profilePicture;
  List<User> followers;
  List<User> following;
  List<Post> posts;
  List<Post> savedPosts;
  bool hasStory;

  User(this.username, this.profilePicture, this.followers, this.following, this.posts, this.savedPosts, this.hasStory);
}