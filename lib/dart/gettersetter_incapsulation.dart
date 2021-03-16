import 'package:flutter/material.dart';

//A combination of the getter and the setter methods are used to transform or encapsulate instance variables. In Dart,
// /The getter is an instance method specified by get keyword.This method does not take any arguments, hence it does not contain parentheses
//While the setter method is specified by set keyword which receives value to be set as an argument.


 class Data{

    String name = ' Hello World '; // Data we want to print
    String get  myValue =>  name ; // get dont have argument   name value replace on myValue
    set  myValue (String value ){     // My val set on Value
      myValue = value;
    }
 }





 // AnotherExample
//---------------------------------------------------------------------
class Employee {
  String name;
  //getter method
  String get emp_name {
    return name;
  }
  //setter method
  void set emp_name(String name) {
    this.name = name; }
  //function definition
  void result()
  {
    print(name);
  }
}
void main() {
//object creation
  Employee emp = new Employee(); emp.name="employee1"; emp.result(); //function call
}