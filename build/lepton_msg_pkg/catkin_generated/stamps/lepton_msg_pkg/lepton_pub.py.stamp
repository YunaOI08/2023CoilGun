#!/usr/bin/env python3
#-*- coding:utf-8 -*-

#from __future import print_function
import rospy
import numpy as np
from lepton_msg_pkg.msg import Lepton

Width = 60
Height = 80

def main():
	rospy.init_node('lepton_testPUB', anonymous=False)
	pub = rospy.Publisher('lepton', Lepton, queue_size=10)
	
	lepton = Lepton()
	
	rate = rospy.Rate(1) # 1Hz
	count = 1

	while not rospy.is_shutdown():
		lepton.msg = np.random.randn(Width, Height)
		lepton.size = np.random.randint(Width*Height) +1	
		
		'''
		print("-"*10)
		print("Size: ", lepton.size)
		print(lepton.msg)
		print("\n")
		'''
		pub.publish(lepton)
		rate.sleep()
	

if __name__=="__main__":
	try:
		main()
	except rospy.ROSInterruptException:
		print("ERROR OCCUR!\n")
