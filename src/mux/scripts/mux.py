#!/usr/bin/env python

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
		self.find_position()
		
	def find_position(self):
		gray = cv2.cvtColor(self.img, cv2.COLOR_BGR2GRAY)
		# self.img = gray
		img = np.copy(gray)
		# print(self.img)
		# print("----------")
		# print(img)
		max_index = np.argmax(img)
		# print(max_index)

		target_x = max_index % 640
		target_y = max_index // 640
		print(f"target : {target_x}, {target_y}")
		
		if 0<= target_x <= 320 and 0<= target_y <= 130:
			print("A")
			self.angle1 = 95
			self.angle2 = 120
		elif 320<= target_x <= 640 and 0<= target_y <= 130:
			print("B")
			self.angle1 = 70
			self.angle2 = 120
		elif 0<= target_x <= 320 and 130<= target_y <= 640:
			print("C")
			self.angle1 = 95
			self.angle2 = 95
		elif 320<= target_x <= 640 and 130<= target_y <= 640:
			print("D")
			self.angle1 = 70
			self.angle2 = 95
		
		self.pub()
		self.draw_ROI(target_x, target_y)

	def draw_ROI(self,x,y):
		cv2.rectangle(self.img, (x-10, y-10), (x+10, y+10), (255, 0, 0), 5)
		cv2.putText(self.img, f"({x}, {y})", (x+10, y-10), cv2.FONT_HERSHEY_SIMPLEX, 1, (255,0,0), 2)
		self.img_show(show=True)


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

