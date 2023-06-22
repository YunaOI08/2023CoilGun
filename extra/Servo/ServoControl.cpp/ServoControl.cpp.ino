/*
 * rosserial Servo Control Example
 *
 * This sketch demonstrates the control of hobby R/C servos
 * using ROS and the arduiono
 * 
 * For the full tutorial write up, visit
 * www.ros.org/wiki/rosserial_arduino_demos
 *
 * For more information on the Arduino Servo Library
 * Checkout :
 * http://www.arduino.cc/en/Reference/Servo
 * 
 * --------------- CODE  ---------------
 * roscore
 * rosrun rosserial_python serial_node.py _port:=/dev/ttyACM0 _baud:=57600
 * rostopic pub /servo1 std_msgs/UInt16 90 --once
 * rostopic pub /servo2 std_msgs/UInt16 90 --once
 * 
 * --------------- CHECK ---------------
 * rostopic info /servo1
 * rostopic info /servo2
 */

#if (ARDUINO >= 100)
 #include <Arduino.h>
#else
 #include <WProgram.h>
#endif

#include <Servo.h> 
#include <ros.h>
#include <std_msgs/UInt16.h>

ros::NodeHandle  nh;

Servo servo1;
Servo servo2;

int currentsens, lastsens = 0;

boolean buttoninput(boolean last, int i) {
  boolean current =digitalRead(i);
  if (current != last) {
    delay(15);
    current = digitalRead(i);
  }
  return(current);
}

void servo_cb1( const std_msgs::UInt16& cmd_msg){
  servo1.write(cmd_msg.data); //set servo angle, should be from 0-180  
  //digitalWrite(13, HIGH-digitalRead(13));  //toggle led  
}

void servo_cb2( const std_msgs::UInt16& cmd_msg){
  servo2.write(cmd_msg.data); //set servo angle, should be from 0-180  
  //digitalWrite(14, HIGH-digitalRead(13));  //toggle led  
}


ros::Subscriber<std_msgs::UInt16> sub1("servo1", servo_cb1);
ros::Subscriber<std_msgs::UInt16> sub2("servo2", servo_cb2);

void setup(){
//  pinMode(13, OUTPUT);
//  pinMode(14, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(2, INPUT);

  nh.initNode();
  nh.subscribe(sub1);
  nh.subscribe(sub2);
  
  servo1.attach(10); //under
  servo2.attach(8); //top

//  servo1.write(90);
//  servo2.write(100);
}

void loop(){
  currentsens = buttoninput(lastsens, 2);
  if (lastsens == 0 && currentsens == 1) {
    digitalWrite(4, HIGH);
    delay(12);
    digitalWrite(4, LOW);
  }
  lastsens = currentsens;
  nh.spinOnce();
//  delay(1);
}
