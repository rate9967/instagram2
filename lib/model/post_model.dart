import 'package:instagram2/model/user_model.dart';

class PostModel{
  UserModel? user ;
  List<String>? content;
  int? like;
  PostModel(this.user,this.content,this.like);
}