import 'package:flutter/material.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => new _MovieListState();
 }

class _MovieListState extends State<MovieList> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Acción',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index){
                return MovieItem(index);
              },
            ),
          ),
          Text(
            'Aventura',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index){
                return MovieItem(index);
              },
            ),
          ),
          Text(
            'Drama',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index){
                return MovieItem(index);;
              },
            ),
          ),
          Text(
            'Romance',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index){
                return MovieItem(index);
              },
            ),
          )
        ],
      ),
    );
  }
}

class MovieItem extends StatelessWidget {

  final int index;
  MovieItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child:GestureDetector(
        child: Card(
          margin: EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 10),
          color: Colors.yellow,
          child: Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/moviefilm.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[850].withOpacity(0.5)
                  ),
                  constraints: BoxConstraints.expand(
                    height: 50,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 20,
                width: 100,
                child: Text(
                  'Pelicula-p-p-p-p-p-p-p-p-p-p-p',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Positioned(
                right: 10,
                bottom: 15,
                //width: 30,
                child: Row(
                  children: <Widget>[
                    Text(
                      '10.0',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    Icon(Icons.stars),
                  ],
                ),
              )
            ],
          ),
        ),
        onTap: () => print('Card $index'),
      )
    );
  }
}