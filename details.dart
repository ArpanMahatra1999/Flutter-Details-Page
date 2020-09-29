import 'package:flutter/material.dart';

//own packages
import 'package:puranapustaks/shared/products.dart';

class Details extends StatefulWidget {

  //include all product's attributes
/*
  final String name;
  final int oldPrice;
  final String picture;
  final String description;
  final int numbers;
  final String category;

  Details(
    this.name,
    this.oldPrice,
    this.picture,
    this.description,
    this.numbers,
    this.category
  );
*/
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {

    //this naming is not needed if name is directly to be used
/*    var naming;
    if (widget.name.length < 24){
      naming = widget.name + " "*(24 - widget.name.length);
    }else{
      naming = widget.name.substring(0,21) + "...";
    } */
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/3,
            child: GridTile(
              child: Container(
                child: Image(
                  height: MediaQuery.of(context).size.height/3-30,
                  //Image should be here
                  //image: AssetImage("Some Image"),
                  image: NetworkImage("https://www.xda-developers.com/files/2018/06/google-now-featured-orange.png"),
                  fit: BoxFit.cover,
                ),
              ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text("widget.name", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
                  title:  Row(
                    children: [
                      Expanded(
                          child: Text(
                              "Rs. "+"((widget.oldPrice)*0.5).toInt().toString()",
                            style: TextStyle(color: Colors.red, fontSize: 15.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          )
                      ),
                      Expanded(
                          child: Text(
                              "Rs. " + "widget.oldPrice.toString()",
                            style: TextStyle(color: Colors.red, fontSize: 15.0, fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough),
                            textAlign: TextAlign.right,
                          )
                      ),
                    ],
                ),
                ),
              ),
            ),
          ),
          Divider(
            height: 2.0,
            color: Colors.black,
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Buy"),
                        content: Text("How many do you want to buy?"),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text("Close"),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Buy", style: TextStyle(color: Colors.grey),)),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Rent"),
                            content: Text("How many do you want to rent?"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Rent", style: TextStyle(color: Colors.grey),)),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 2.0,
            color: Colors.black,
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  elevation: 0.2,
                  child: Text("Submit", style: TextStyle(color: Colors.white),),
                ),
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: null),
              IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: null),
            ],
          ),
          Divider(
            height: 2.0,
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            color: Colors.white70,
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text("Book Description", style: TextStyle(fontWeight: FontWeight.bold),),
                Divider(
                  height: 5.0,
                ),
                Text("widget.description", textAlign: TextAlign.justify, style: TextStyle(color: Colors.black),),
                ],
            ),
          ),
          //When products are called from others
          /*Products()*/
        ],
      ),
    );;
  }
}
