/*********************************************************************
 *
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2015, P.A.N.D.O.R.A. Team.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of the P.A.N.D.O.R.A. Team nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 * Authors: Alexandros Philotheou, Manos Tsardoulias,
 * Angelos Triantafyllidis <aggelostriadafillidis@gmail.com>
 *********************************************************************/

#ifndef FLIR_LEPTON_IMAGE_PROCESSING_PROCESSING_NODE_PROCESS_H
#define FLIR_LEPTON_IMAGE_PROCESSING_PROCESSING_NODE_PROCESS_H

#include "processing_node/thermal_roi_detector.h"
#include "utils/parameters.h"
#include "utils/message_conversions.h"
#include "flir_lepton_msgs/GeneralAlertInfo.h"
#include "flir_lepton_msgs/ThermalAlert.h"
#include "flir_lepton_msgs/ThermalAlertVector.h"
#include "flir_lepton_msgs/FlirLeptonBatchMsg.h"
#include "std_msgs/Float32MultiArray.h"

/**
  @brief The namespaces for this package
 **/
namespace flir_lepton
{
namespace flir_lepton_image_processing
{
  /**
    @class Process
    @brief Provides functionalities for locating thermal rois via
    analysis of a thermal image acquired by flir lepton camera.
   **/
  class Process
  {
    private:
      // The ROS node handle.
      ros::NodeHandle nodeHandle_;

      // Subscriber of Flir Lepton camera sensor/temperature image.
      ros::Subscriber batchSubscriber_;

      // The name of the topic where the sensor/temperature image is acquired from.
      std::string batchTopic_;

      // Ros publisher for the candidate Rois found by process node.
      // Includes keypoints, outline and bounding box
      ros::Publisher candidateRoisPublisher_;

      // The name of the topic where the candidate Rois that the process node
      // locates are published to.
      std::string candidateRoisTopic_;

      // Ros publisher for the candidate Rois Alert message found by process node.
      // Includes flir_lepton_msgs/GeneralAlertInfo and temperatures
      ros::Publisher candidateRoisAlertPublisher_;

      // The name of the topic where the candidate Rois Alert message that the
      // process node locates are published to.
      std::string candidateRoisAlertTopic_;

      // The dynamic reconfigure (process) parameters' server
      dynamic_reconfigure::Server< ::flir_lepton_image_processing::thermal_cfgConfig>
        server;

      // The dynamic reconfigure (process) parameters' callback
      dynamic_reconfigure::Server< ::flir_lepton_image_processing::thermal_cfgConfig>
       ::CallbackType f;

      /**
        @brief Based on the detection method that we select, return the appropriate
        image to be further processed.The thermal image message is unpacked in
        a cv::Mat image.
        @param-[in] msg [const flir_lepton_msgs::FlirLeptonBatchMsg&]
        The batch message from flir-lepton
        @param[in] detection_method [const int] The detection method that we use
        @return cv::Mat The image to be further processed.
       **/
      cv::Mat selectImageToProcess(
        const flir_lepton_msgs::FlirLeptonBatchMsg& msg,
        const int detection_method);

      /**
        @brief Callback for the thermal sensor/temperature image received by
        flir-lepton sensor.
        Thermal rois are then located inside this image.
        @param msg [const flir_lepton_msgs::FlirLeptonBatchMsg&]
        The input flir lepton message.
        @return void
       **/
      void inputThermalImageCallback(
        const flir_lepton_msgs::FlirLeptonBatchMsg& msg);

      /**
        @brief Acquire the names of topics which the process node will be having
        transactionary affairs with.
        @param void
        @return void
       **/
      void getTopicNames();

      /**
        @brief The function called when a parameter is changed
        @param[in] config [const ::flir_lepton_image_processing::thermal_cfgConfig&]
        @param[in] level [const uint32_t]
        @return void
       **/
      void parametersCallback(
        const ::flir_lepton_image_processing::thermal_cfgConfig& config,
        const uint32_t& level);


      /**
        @brief This function finds for each region of interest it's
        probability based on the keypoint's average temperature.
        Then fills the probability and the temperature in the RoisConveyor struct.
        @param[out] rois [const RoisConveyor&] The regions of interest found.
        @param[in] temperatures [const Float32MultiArray&] The multiArray with
        the temperatures of the image.
        @param[in] method [const int&] Denotes the probabilities extraction
        method.
        @return void
       **/
      void findRoisProbability(RoisConveyor* rois,
        const std_msgs::Float32MultiArray& temperatures, const int& method);

    public:
      /**
        @brief Default constructor. Initiates communications, loads parameters.
        @return void
       **/
      Process(void);

      /**
        @brief Default destructor
        @return void
       **/
      ~Process(void);
  };

}  // namespace flir_lepton_image_processing
}  // namespace flir_lepton

#endif  // FLIR_LEPTON_IMAGE_PROCESSING_PROCESSING_NODE_PROCESS_H
