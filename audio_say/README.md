# Audio say

<img src="./audio_say/text-to-speech.jpg" alt="audio_say" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/audio_say
* Supported architectures <b>amd64/arm64</b>
* ROS version <b>noetic</b>


# Component
Image of the component in nimbus
Link to component in nimbus hub

# Short description
* Text to speech from audio_common, gets string, output sound.
* To publish an audio message use topic /msg_to_play

# Example usage
```
docker run -it cognimbus/audio_say roslaunch ros_audio_launch say_string.launch
```

# Throubleshoot
* If there is no sound check the audio settings 
