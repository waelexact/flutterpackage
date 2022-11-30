import 'package:flutter/material.dart';


Container package(List ListOfElements, double SpaceBetweenElement, bool Package_circle, double borders) {
  return Container(
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: ListOfElements.length,
        itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.all(SpaceBetweenElement),
          child: Container(
            margin: EdgeInsets.only(top: 30.0, bottom: 500),
            decoration: BoxDecoration(
              shape: Package_circle == true ? BoxShape.circle : BoxShape.rectangle,
              border: Border.all(
                  width: borders,
                  color: Colors.grey,
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/${ListOfElements[index]}'),
              radius: 30.0,
            ),
          ),
        );
        },
    ),
  );
}