import 'package:flutter/material.dart';
import 'package:myapp/model/destination_model.dart';
import 'package:myapp/screens/destination_screen.dart';

class CategorieSelector extends StatefulWidget {
  @override
  _CategorieSelectorState createState() => _CategorieSelectorState();
}

class _CategorieSelectorState extends State<CategorieSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListView.builder(
          itemCount: destinations.length,
          itemBuilder: (BuildContext context, int index) {
            final destination = destinations[index];

            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DestinationScreen(
                    destination: destination,
                  ),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(
                    top: 5.0, bottom: 5.0, right: 5.0, left: 5.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        destination.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          destination.land,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          destination.destination,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
