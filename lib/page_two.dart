import 'package:flutter/material.dart';
import 'package:flutter_counter_app/favorite_button.dart';
import 'package:flutter_counter_app/main.dart';
import 'package:flutter_counter_app/page_one.dart';
import 'increment_bloc.dart';
import 'bloc_provider.dart';
class PageTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final IncrementBloc bloc = BlocProvider.of<IncrementBloc>(context);


    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(



          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Row(
              children: <Widget>[
                FavoriteButton(
                  child: const Icon(Icons.favorite),
                ),
              ],
            ),



            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: RaisedButton(
                  child: Text('Hit me '),
                  onPressed: (){
                    bloc.incrementCounter.add(null);
                  }),
            ),


          ],
        ),
      ),
    );
  }


}