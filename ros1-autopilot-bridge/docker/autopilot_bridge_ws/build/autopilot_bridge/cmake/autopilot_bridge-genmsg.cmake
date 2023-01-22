# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "autopilot_bridge: 13 messages, 16 services")

set(MSG_I_FLAGS "-Iautopilot_bridge:/autopilot_bridge_ws/src/autopilot_bridge/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(autopilot_bridge_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv" "autopilot_bridge/Waypoint"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg" "autopilot_bridge/GeoPoseWithCovariance:geometry_msgs/Twist:autopilot_bridge/GeoPoint:geometry_msgs/Vector3:autopilot_bridge/GeoPose:geometry_msgs/TwistWithCovariance:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv" "autopilot_bridge/Rallypoint"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv" "autopilot_bridge/ParamPair"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv" "autopilot_bridge/AutoPilotMsg"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv" "autopilot_bridge/Waypoint"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv" "autopilot_bridge/Fencepoint"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg" "autopilot_bridge/GeoPose:autopilot_bridge/GeoPoint:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv" "autopilot_bridge/Waypoint"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg" ""
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv" "autopilot_bridge/Rallypoint"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg" "autopilot_bridge/GeoPoint:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv" "autopilot_bridge/ParamPair"
)

get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv" NAME_WE)
add_custom_target(_autopilot_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autopilot_bridge" "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv" "autopilot_bridge/Fencepoint"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)

### Generating Services
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_cpp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
)

### Generating Module File
_generate_module_cpp(autopilot_bridge
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(autopilot_bridge_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(autopilot_bridge_generate_messages autopilot_bridge_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_cpp _autopilot_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autopilot_bridge_gencpp)
add_dependencies(autopilot_bridge_gencpp autopilot_bridge_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autopilot_bridge_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)

### Generating Services
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_eus(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
)

### Generating Module File
_generate_module_eus(autopilot_bridge
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(autopilot_bridge_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(autopilot_bridge_generate_messages autopilot_bridge_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_eus _autopilot_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autopilot_bridge_geneus)
add_dependencies(autopilot_bridge_geneus autopilot_bridge_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autopilot_bridge_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)

### Generating Services
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_lisp(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
)

### Generating Module File
_generate_module_lisp(autopilot_bridge
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(autopilot_bridge_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(autopilot_bridge_generate_messages autopilot_bridge_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_lisp _autopilot_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autopilot_bridge_genlisp)
add_dependencies(autopilot_bridge_genlisp autopilot_bridge_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autopilot_bridge_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)

### Generating Services
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_nodejs(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
)

### Generating Module File
_generate_module_nodejs(autopilot_bridge
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(autopilot_bridge_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(autopilot_bridge_generate_messages autopilot_bridge_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_nodejs _autopilot_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autopilot_bridge_gennodejs)
add_dependencies(autopilot_bridge_gennodejs autopilot_bridge_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autopilot_bridge_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_msg_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg;/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)

### Generating Services
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv"
  "${MSG_I_FLAGS}"
  "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)
_generate_srv_py(autopilot_bridge
  "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
)

### Generating Module File
_generate_module_py(autopilot_bridge
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(autopilot_bridge_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(autopilot_bridge_generate_messages autopilot_bridge_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv" NAME_WE)
add_dependencies(autopilot_bridge_generate_messages_py _autopilot_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autopilot_bridge_genpy)
add_dependencies(autopilot_bridge_genpy autopilot_bridge_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autopilot_bridge_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autopilot_bridge
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(autopilot_bridge_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(autopilot_bridge_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(autopilot_bridge_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autopilot_bridge
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(autopilot_bridge_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(autopilot_bridge_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(autopilot_bridge_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autopilot_bridge
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(autopilot_bridge_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(autopilot_bridge_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(autopilot_bridge_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autopilot_bridge
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(autopilot_bridge_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(autopilot_bridge_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(autopilot_bridge_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autopilot_bridge
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(autopilot_bridge_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(autopilot_bridge_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(autopilot_bridge_generate_messages_py geometry_msgs_generate_messages_py)
endif()
