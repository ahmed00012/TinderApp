import 'package:flutter/material.dart';
import 'package:tinder/ui/widgets/photo.dart';

Widget ProfileWidget(
    {padding,
    photoHeight,
    photoWidth,
    clipRadius,
    photo,
    containerHeight,
    containerWidth,
    child}) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black54,
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(10, 10))
        ],
        borderRadius: BorderRadius.circular(clipRadius),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            width: photoWidth,
            height: photoHeight,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(clipRadius),
              child: PhotoWidget(
                photoLink: photo,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black54,
                    Colors.black87,
                    Colors.black
                  ],
                  stops: [0.1, 0.2, 0.4, 0.9],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                ),
                color: Colors.black45,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(clipRadius),
                  bottomRight: Radius.circular(clipRadius),
                )),
            height: containerHeight,
            width: containerWidth,
            child: child,
          )
        ],
      ),
    ),
  );
}
