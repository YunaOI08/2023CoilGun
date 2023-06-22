#!/usr/bin/env python3

import rospy
import cv2
import numpy as np
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
#from sensor_msgs.msg import image_encoding
from std_msgs.msg import UInt16


bridge = CvBridge()

class Mux():
	def __init__(self):
		rospy.init_node('mux', anonymous=True)
		self.pub1 = rospy.Publisher('/servo1', UInt16, queue_size=10)
		self.pub2 = rospy.Publisher('/servo2', UInt16, queue_size=10)
		self.rate = rospy.Rate(10)
		self.angle1 = 0
		self.angle2 = 0

	def callback(self, data):
		self.img = bridge.imgmsg_to_cv2(data, "bgr8")
		self.img = cv2.resize(self.img, dsize=(640,640))
		self.img_show(show=True)
		self.find_position()
		
	def find_position(self):
		img = np.copy(self.img)
		max_index = np.argmin(img)
		print(max_index)
		
		# #if 0<= target_x <= 320 and 0<= target_y <= 320:
		# self.angle1 = 0
		# self.angle2 = 0
		# #elif 320<= target_x <= 640 and 0<= target_y <= 320:
		# self.angle1 = 0
		# self.angle2 = 0
		# #elif 0<= target_x <= 320 and 320<= target_y <= 640:
		# self.angle1 = 0
		# self.angle2 = 0
		# #elif 320<= target_x <= 640 and 320<= target_y <= 640:
		self.angle1 = 0
		self.angle2 = 0
		
		self.pub()
	
	def pub(self):
		self.pub1.publish(self.angle1)
		self.pub2.publish(self.angle2)
		print(f"pub angle1:{self.angle1}, angle2:{self.angle2}")

	def img_show(self, show=True):
		if show:
			cv2.imshow('img', self.img)
			if cv2.waitKey(1) & 0xFF == ord('q'):
				return

	def run(self):
		self.sub = rospy.Subscriber('/flir_lepton/thermal_image', Image, self.callback)

		while not rospy.is_shutdown():
			#if cv2.waitKey(1) == ord('q')
			#break
			pass


if __name__=="__main__":
	mux = Mux()
	try:
		mux.run()
	except rospy.ROSInterruptException:
		pass

