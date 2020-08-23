import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/models/stories_model.dart';
import 'package:instagram_clone/providers/stories_provider.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  StoriesProvider storiesProvider = new StoriesProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: _appBar(),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            _labels(),
            _stories(),
            Divider(
              color: Colors.grey,
              height: 0,
              thickness: 0.5,
            ),
            _post(),
          ],
        ),
      ),
    );
  }

  Widget _appBar(){
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Container(
          color: Colors.black38,
          height: 0.75,
        ),
      ),
      backgroundColor: Color(0xFFF9F9F9),
      elevation: 0,
      centerTitle: true,
      title: Container(
        margin: EdgeInsets.only(top: 10),
        child: SizedBox(
          height: 40,
          child: Image.asset('assets/img/logo-instagram.png')),
      ),
      leading: IconButton(
        onPressed: (){},
        icon: Icon(Feather.camera,
        color: Colors.black,
        size: 30,
        ),
      ),
      actions: <Widget> [
        IconButton(
          onPressed: (){},
          icon: Icon(Feather.tv,
          color: Colors.black,
          size: 28,
          ),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(FontAwesome.send_o,
          color: Colors.black,
          size: 28,
          ),
        )
      ],
    );
  }

  Widget _labels(){
    return Container(
      margin: EdgeInsets.only(top: 5, left: 15, right:15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Stories",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.arrow_right),
              Text("Watch all",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _stories(){
    return Container(
      height: 105,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, left: 5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: storiesProvider.getStories().map((story){
          return _createStorie(story);
        }).toList(),
      ),
    );
  }

  Widget _createStorie(Story story){
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              width: 3,
              color: Color(0xFF8E44AD),
            )
            ),
          child: Container(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
                      child: Image(
                image: NetworkImage(story.photo),
                height: 65,
                width: 65,
                fit: BoxFit.cover,
                ),
            ),
          ),
        ),
          SizedBox(height: 6),
        Text(story.name,
          style: TextStyle(fontSize: 13),
        )
      ],
    );
  }

  Widget _post(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, i){
          return _createPost();
        }),
    );
  }

  Widget _createPost(){
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 12, left: 18, bottom: 12, right: 12,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                              child: Image(
                                image: NetworkImage(
                                  'https://s3.amazonaws.com/uifaces/faces/twitter/bruno_mart/128.jpg'),
                                height: 45,
                                width: 45,
                                fit: BoxFit.cover,
                                ),
                    ),
                  ),
        ),
                Text('Elaina',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,)
                ),
                Expanded(child: SizedBox()),
                IconButton(
                  icon: Icon(Icons.more_horiz), 
                  iconSize: 30,
                  onPressed: (){},
                  ),
              ],
            ),
          ),
          FadeInImage(
            placeholder: AssetImage('assets/img/loading.gif'),
            image: NetworkImage('http://lorempixel.com/640/480/business'),),
          Container(
            padding: EdgeInsets.only(top: 5, left: 7, right: 7, bottom: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Image(
                        image: AssetImage('assets/img/heart.png'),
                        width: 30,
                        ), 
                      onPressed: (){},
                      ),
                    IconButton(
                      icon: Image(
                        image: AssetImage('assets/img/comment.png'),
                        width: 30,
                        ), 
                      onPressed: (){},
                      ),
                    IconButton(
                      icon: Image(
                        image: AssetImage('assets/img/send.png'),
                        width: 30,
                        ), 
                      onPressed: (){},
                      ),
                  ],
                ),
                IconButton(
                  icon: Image(
                    image: AssetImage('assets/img/save_o.png'),
                    width: 30,
                    ), 
                  onPressed: (){},
                  ),
              ],
            ),
          )
        ],
      )
    );
  }
}