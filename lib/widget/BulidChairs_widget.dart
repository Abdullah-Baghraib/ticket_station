import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BulidChairs
{
  static Widget selectedChair()
  {
    return Container
    (
      height: 10,
      width: 10,
      decoration: BoxDecoration
      (
        color: Colors.black,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(6)
      ),
    );
  }

  static Widget availbleChair()
  {
    return Container
    (
      height: 10,
      width: 10,
      decoration: BoxDecoration
      (
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(6)
      ),
    );
  }

  static Widget resevedChair()
  {
    return Container
    (
      height: 10,
      width: 10,
      decoration: BoxDecoration
      (
        color: Colors.black54,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(6)
      ),
    );
  }
}