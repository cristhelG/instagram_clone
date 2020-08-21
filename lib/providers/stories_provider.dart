import 'package:instagram_clone/models/stories_model.dart';

class StoriesProvider{
  List<Story> stories = new List();

  List<Story> getStories(){
    stories = [
      new Story(
        name: "Domenick",
        photo: "https://s3.amazonaws.com/uifaces/faces/twitter/silv3rgvn/128.jpg",
      ),
      new Story(
        name: "Nicole",
        photo: "https://s3.amazonaws.com/uifaces/faces/twitter/emileboudeling/128.jpg",
      ),
      new Story(
        name: "Florida",
        photo: "https://s3.amazonaws.com/uifaces/faces/twitter/joaoedumedeiros/128.jpg",
      ),
      new Story(
        name: "Ashley",
        photo: "https://s3.amazonaws.com/uifaces/faces/twitter/iduuck/128.jpg",
      ),
      new Story(
        name: "Napoleon",
        photo: "https://s3.amazonaws.com/uifaces/faces/twitter/krystalfister/128.jpg",
      ),
      new Story(
        name: "Maximus",
        photo: "https://s3.amazonaws.com/uifaces/faces/twitter/charliegann/128.jpg",
      ),
      new Story(
        name: "Adelle",
        photo: "https://s3.amazonaws.com/uifaces/faces/twitter/marcobarbosa/128.jpg",
      ),
      new Story(
        name: "Paul",
        photo: "https://s3.amazonaws.com/uifaces/faces/twitter/sementiy/128.jpg",
      )
    ];
    return stories;
  }

}