#!/usr/bin/env python

import rospy
import cv2
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
#from sensor_msgs.msg import image_encoding
from std_msgs.msg import UInt16

bridge = CvBridge()

class Mux():
	def __init__(self):
		self.pub1 = rospy.Publisher('/servo1', UInt16, queue_size=10)
		self.pub2 = rospy.Publisher('/servo2', UInt16, queue_size=10)
		self.rate = rospy.Rate(10)
		self.angle1 = 0
		self.angle1 = 0

	def callback(self, data):
		self.img = bridge.imgmsg_to_cv2(data, "bgr8")
		self.angle1 = 0
		self.angle2 = 0

	def img_show(self, show=True):
		if show:
			cv2.imshow('img', self.img)

	def run(self):ros
		rospy.init_node('mux', anonymous=True)
		self.sub = rospy.Subscriber('/flir_lepton/thermal_image', Image, self.callback)
		
		while not rospy.is_shutdown():
			self.img_show(show=True)
			print(f"pub angle1:{self.angle1}, angle2:{self.angle2}")
			self.pub1.publish(self.angle1)
			self.pub2.publish(self.angle2)
		

if __name__=="__main__":
	mux = Mux()
	try:
		mux.run():
	except rospy.ROSInterruptException:
		pass
