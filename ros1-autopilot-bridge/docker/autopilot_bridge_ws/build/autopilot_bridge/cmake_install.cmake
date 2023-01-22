# Install script for directory: /autopilot_bridge_ws/src/autopilot_bridge

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/autopilot_bridge_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autopilot_bridge/msg" TYPE FILE FILES
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/AutoPilotMsg.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/Fencepoint.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoint.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPose.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/GeoPoseWithCovariance.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/Geodometry.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/Heartbeat.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/LLA.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/ParamPair.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/Rallypoint.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/Status.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/Waypoint.msg"
    "/autopilot_bridge_ws/src/autopilot_bridge/msg/WeatherData.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autopilot_bridge/srv" TYPE FILE FILES
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceGetAll.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/FenceSetAll.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/FileLoad.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGet.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamGetList.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSet.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/ParamSetList.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallyGetAll.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/RallySetAll.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/ReqPrevNMsgs.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/SlaveSetup.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/TimedAction.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/Version.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetAll.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPGetRange.srv"
    "/autopilot_bridge_ws/src/autopilot_bridge/srv/WPSetAll.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autopilot_bridge/cmake" TYPE FILE FILES "/autopilot_bridge_ws/build/autopilot_bridge/catkin_generated/installspace/autopilot_bridge-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/autopilot_bridge_ws/devel/include/autopilot_bridge")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/autopilot_bridge_ws/devel/share/roseus/ros/autopilot_bridge")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/autopilot_bridge_ws/devel/share/common-lisp/ros/autopilot_bridge")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/autopilot_bridge_ws/devel/share/gennodejs/ros/autopilot_bridge")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/autopilot_bridge_ws/devel/lib/python2.7/dist-packages/autopilot_bridge")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/autopilot_bridge_ws/devel/lib/python2.7/dist-packages/autopilot_bridge")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/autopilot_bridge_ws/build/autopilot_bridge/catkin_generated/installspace/autopilot_bridge.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autopilot_bridge/cmake" TYPE FILE FILES "/autopilot_bridge_ws/build/autopilot_bridge/catkin_generated/installspace/autopilot_bridge-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autopilot_bridge/cmake" TYPE FILE FILES
    "/autopilot_bridge_ws/build/autopilot_bridge/catkin_generated/installspace/autopilot_bridgeConfig.cmake"
    "/autopilot_bridge_ws/build/autopilot_bridge/catkin_generated/installspace/autopilot_bridgeConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autopilot_bridge" TYPE FILE FILES "/autopilot_bridge_ws/src/autopilot_bridge/package.xml")
endif()

