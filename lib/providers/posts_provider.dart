import 'package:instagram_clone/models/post_model.dart';

class PostProvider{
  List<Post> posts = new List();

  List<Post> getPosts(){
    posts = [
      new Post(
        userName: 'Darrick',
        userPhoto: 'https://s3.amazonaws.com/uifaces/faces/twitter/kolsvein/128.jpg',
        caption: 'Ut corporis molestias ab qui odit sit.',
        postPhoto: "http://lorempixel.com/640/480/technics",
        date: "Julio 26",
        likes: 225,
        topLikes: ["Cristhian", "Carlos"]
      ),
      new Post(
        userName: 'Hillard',
        userPhoto: 'https://s3.amazonaws.com/uifaces/faces/twitter/kevinjohndayy/128.jpg',
        caption: 'Ut corporis molestias ab qui odit sit.',
        postPhoto: "http://lorempixel.com/640/480/sports",
        date: "Julio 26",
        likes: 25,
        topLikes: ["Casey", "Carlos"],
      ),
      new Post(
        userName: "Kailyn",
        userPhoto: 'https://s3.amazonaws.com/uifaces/faces/twitter/cadikkara/128.jpg',
        caption: 'Ut corporis molestias ab qui odit sit.',
        postPhoto: "http://lorempixel.com/640/480/nightlife",
        date: "Julio 26",
        likes: 325,
        topLikes: ["Cristhian", "Laura"],
      ),
      new Post(
        userName: 'Julie',
        userPhoto: 'https://s3.amazonaws.com/uifaces/faces/twitter/thiagovernetti/128.jpg',
        caption: 'Ut corporis molestias ab qui odit sit.',
        postPhoto: "http://lorempixel.com/640/480/technics",
        date: "Julio 26",
        likes: 100,
        topLikes: ["Cristhian", "Carlos"],
      ),
      new Post(
        userName: 'Delaney',
        userPhoto: "https://s3.amazonaws.com/uifaces/faces/twitter/longlivemyword/128.jpg",
        caption: 'Ut corporis molestias ab qui odit sit.',
        postPhoto: "http://lorempixel.com/640/480/city",
        date: "Julio 26",
        likes: 35,
        topLikes: ["Leonel", "Luis"],
      ),
      new Post(
        userName: 'Efrain',
        userPhoto: 'https://s3.amazonaws.com/uifaces/faces/twitter/hgharrygo/128.jpg',
        caption: 'Ut corporis molestias ab qui odit sit.',
        postPhoto: "http://lorempixel.com/640/480/animals",
        date: "Julio 26",
        likes: 2700,
        topLikes: ["Juan", "Cemilé"],
      ),
      new Post(
        userName: 'Lenny',
        userPhoto: 'https://s3.amazonaws.com/uifaces/faces/twitter/marrimo/128.jpg',
        caption: 'Ut corporis molestias ab qui odit sit.',
        postPhoto: "http://lorempixel.com/640/480/food",
        date: "Julio 26",
        likes: 60,
        topLikes: ["Eduardo", "Elena"],
      ),
      new Post(
        userName: 'Thaddeus',
        userPhoto: 'https://s3.amazonaws.com/uifaces/faces/twitter/aka_james/128.jpg',
        caption: 'Ut corporis molestias ab qui odit sit.',
        postPhoto: "http://lorempixel.com/640/480/people",
        date: "Julio 26",
        likes: 38,
        topLikes: ["Scarleth", "Milena"],
      ),
      new Post(
        userName: 'Veronica',
        userPhoto: 'https://s3.amazonaws.com/uifaces/faces/twitter/finchjke/128.jpg',
        caption: 'Ut corporis molestias ab qui odit sit.',
        postPhoto: "http://lorempixel.com/640/480/animals",
        date: "Julio 26",
        likes: 158,
        topLikes: ["Camila", "Carlos"],
      ),
      new Post(
        userName: 'Angelina',
        userPhoto: 'https://s3.amazonaws.com/uifaces/faces/twitter/bagawarman/128.jpg',
        caption: 'Ut corporis molestias ab qui odit sit.',
        postPhoto: "http://lorempixel.com/640/480/nature",
        date: "Julio 26",
        likes: 225,
        topLikes: ["Cristhian", "Carlos"],
      )
    ];
  
    return posts;
  }
}