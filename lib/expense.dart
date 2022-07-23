import 'dart:core';

import 'package:flutter/cupertino.dart';


class Expense {

 final double expense;
 final String title;
 final String id;
 final DateTime dateTime;
 final IconData icon;

 Expense({
  required this.id,
  required this.dateTime,
  required this.expense,
  required this.title,
  required this.icon

 });


}