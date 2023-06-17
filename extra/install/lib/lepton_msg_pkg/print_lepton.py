#!/usr/bin/env python3
#-*- coding:utf-8 -*-

#from __future import print_function
import rospy
from lepton_msg_pkg.msg import Lepton

def callback(data):
	print("----------------Connect")
	#data_size = size(data)
	print(data)

def main():
	print("--------Subscriber--------")
	rospy.init_node('lepton_testSUB', anonymous=False)
	rospy.Subscriber('lepton', Lepton, callback)
	rospy.spin()

if __name__ == '__main__':
	main()

