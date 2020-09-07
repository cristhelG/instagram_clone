class Post{
  final String userPhoto;
  final String userName;
  final String postPhoto;
  final String caption;
  final String date;
  final int likes;
  final List<String> topLikes;

  Post( 
    {
    this.userName,
    this.userPhoto,
    this.postPhoto,
    this.caption,
    this.date,
    this.likes,
    this.topLikes});
}