FROM ros:melodic

#https://www.clearpathrobotics.com/assets/guides/melodic/spot-ros/ros_usage.html


RUN apt update && apt install wget -y && apt install git-all -y
RUN wget https://raw.githubusercontent.com/clearpathrobotics/public-rosdistro/master/rosdep/50-clearpath.list -O /etc/ros/rosdep/sources.list.d/50-clearpath.list 
RUN apt update && apt install -y python3-pip bridge-utils git && \
    pip3 install cython  &&  pip3 install bosdyn-client bosdyn-mission bosdyn-api bosdyn-core 
#     pip3 install empy

# WORKDIR catkin_ws
# RUN mkdir src && cd src && git clone https://github.com/clearpathrobotics/spot_ros.git && cd .. && \
# RUN . /opt/ros/noetic/setup.sh && catkin_make
# the network 
#Remove any wired network configuration files from /etc/netplan. 
#Wireless configuration files may be retained. 
#Create the file /etc/netplan/50-ethernet-bridge.yaml with the following contents: 
# Bridge together all physical ethernet ports and allow them to operate simultaneously on:
# - 192.168.131.1/24 for ROS
# - 192.168.50.1/24 for communicating with the Spot base platform
# - dhcp for wired external internet access
#network:
#  version: 2
#  renderer: networkd
#  ethernets:
#    bridge_eth:
#      dhcp4: no
#      dhcp6: no
#      match:
#        name: eth*
#    bridge_eno:
#      dhcp4: no
#      dhcp6: no
#      match:
#        name: eno*
#    bridge_enp:
#      dhcp4: no
#      dhcp6: no
#      match:
#        name: enp*
#    bridge_enx:
#      dhcp4: no
#      dhcp6: no
#      match:
#        name: enx*
#  bridges:
#    br0:
#      dhcp4: yes
#      dhcp6: no
#      interfaces: [bridge_eth, bridge_eno, bridge_enp, bridge_enx]
#      addresses:
#        - 192.168.50.1/24
#        - 192.168.131.1/24   

# COPY entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh

# ENTRYPOINT [ "/entrypoint.sh" ]

# CMD roslaunch leg_tracker joint_leg_tracker.launch