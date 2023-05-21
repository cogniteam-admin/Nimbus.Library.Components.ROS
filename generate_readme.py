import os
import json
import requests
import re


def generate_headline(repo_name:str):
    return f"# {repo_name.title()}"


def generate_img_src(dir_path, repo_name):
    try:
        files = os.listdir(os.path.join(dir_path, repo_name))
        files.remove('nimbusc.json')
        img_name = files[0]
        return f"<img src=\"./{repo_name}/{img_name}\" alt=\"{repo_name}\" width=\"400\"/>"
    except Exception as e:
        print('Error while trying to generate image link')
        print(str(e))


def extract_image_from_json(dir_path, repo_name):
    try:
        json_file = open(os.path.join(dir_path, repo_name, 'nimbusc.json'), 'r')
        json_content = json.load(json_file)
        docker_image = json_content['environment']['dockerInfo']['image'].split(':')[0]    
        return docker_image
    except Exception as e:
        print("Error while trying to extract docker image from json file")
        print(str(e))


def generate_dockerhub_image(dir_path, repo_name):
        docker_image = extract_image_from_json(dir_path, repo_name)
        return f"* Dockerhub image https://hub.docker.com/r/{docker_image}"


def generate_supported_arch(dir_path, repo_name):
    try:
        image_name = extract_image_from_json(dir_path, repo_name)
        registry_url = "https://hub.docker.com/v2/repositories"
        tags_endpoint = f"{registry_url}/{image_name}/tags"
        response = requests.get(tags_endpoint)
        
        if response.status_code != 200:
            raise Exception(f"Failed to retrieve tags for image '{image_name}'. Error: {response.text}")
        
        images = response.json()['results'][0]['images']
        architectures = [image['architecture'] for image in images]
        return f"* Supported architectures <b>{'/'.join(architectures)}</b>"
    except Exception as e:
        print('Error while trying to extract architectures from docker hub')
        print(str(e))


def generate_ros_version(dir_path, repo_name):
    try:
        docker_file = open(os.path.join(dir_path, 'docker', 'Dockerfile'), 'r')
        ros_version = docker_file.read().split('\n')[0].split(':')[-1]
        return  f"* ROS version <b>{ros_version}</b>"
    except Exception as e:
        print('Error while trying to extract ros version from Dockerfile')
        print(str(e))


def generate_description(dir_path, repo_name):
    try:
        json_file = open(os.path.join(dir_path, repo_name, 'nimbusc.json'), 'r')
        json_content = json.load(json_file)
        description = json_content['description']
        return f"# Short description\n* {description}"
    except Exception as e:
        print('Error while trying to extract description from json file')
        print(str(e))

def extract_launch_arguments(params):
    args = {}
    for param in params:
        val_key = [key for key in param.keys() if key.endswith('Value')][0]
        args[param['name']] = param[val_key]
    return args

def generate_roslaunch(commands, params):
    launch_args = extract_launch_arguments(params)
    pattern = r"\{(.*?)\}"  # regular expression pattern to match content inside curly braces
    for i in range(len(commands)):
        match = re.search(pattern, commands[i])
        if match:
            content = match.group(1)
            commands[i] = f"{content}:={launch_args[content]}"
    return commands

def extract_binds(binds):
    if len(binds) == 0:
        return ''
    string = ""

    for bind in binds:
        string += f"-v {bind['source']}:{bind['target']}"
        string += ' '
    return string

def generate_example_usage(dir_path, repo_name):
    # TODO: gpu, runtime
    flags = {'privileged':'--privileged', 'networkHost':'--network=host', 'runtime':'--runtime'}
    try:
        json_file = open(os.path.join(dir_path, repo_name, 'nimbusc.json'), 'r')
        json_content = json.load(json_file)
        commands = json_content['environment']['dockerInfo']['commands']
        params = json_content['parameters']['parameters']
        commands = generate_roslaunch(commands, params)
        example = f"# Example usage\n```\ndocker run -it "
        docker_info = json_content['environment']['dockerInfo']

        for flag in flags.keys():
            try:
                if docker_info[flag]:
                    example += flags[flag] + ' '
            except:
                pass
                # print(f'No {flag} flag for component {repo_name}')

        example += extract_binds(docker_info['binds'])
        
        return f"{example}cognimbus/{repo_name} {' '.join(commands)}\n```"
    except Exception as e:
        print("Error while trying to extract commands from json file")
        print(str(e))


def generate_repo_readme(dir_path, repo_name):
    # f = open(os.path.join(dir_path, repo_name, 'README.md'), 'w')
    # f.write(generate_headline(repo_name))
    # f.write('\n\n')
    # f.write(generate_img_src(dir_path, repo_name))
    # f.write('\n\n')
    # # TODO: ROS project page
    # f.write(generate_dockerhub_image(dir_path, repo_name))
    # f.write('\n')
    # f.write(generate_supported_arch(dir_path, repo_name))
    # f.write('\n')
    # f.write(generate_ros_version(dir_path, repo_name))
    # f.write('\n\n')
    # f.write(generate_description(dir_path, repo_name))
    # f.write('\n\n')
    # f.write(generate_example_usage(dir_path, repo_name))

    readme = ""
    readme += generate_headline(repo_name)
    readme += '\n\n'
    readme += generate_img_src(dir_path, repo_name)
    readme += '\n\n'
    # TODO: ROS project page
    readme += generate_dockerhub_image(dir_path, repo_name)
    readme += '\n'
    readme += generate_supported_arch(dir_path, repo_name)
    readme += '\n'
    readme += generate_ros_version(dir_path, repo_name)
    readme += '\n\n'
    readme += generate_description(dir_path, repo_name)
    readme += '\n\n'
    readme += generate_example_usage(dir_path, repo_name)
    return readme


def generate_library_reademe():
    library_dir_path = os.path.dirname(__file__)
    repos = os.listdir(library_dir_path)

    repos.remove('unclassified')
    repos.remove('generate_readme.py')
    repos.remove('README.md')
    repos.remove('.git')
    repos.remove('.gitignore')
    repos.remove('.gitlab-ci.yml')

    # device name issue
    repos.remove('deegoo-fpv-gps')                 # name param taken from device info
    repos.remove('generic-webcam')
    repos.remove('generic-webcam-with-mic')
    repos.remove('hokuyo')
    repos.remove('lsd-lidar-c16')
    repos.remove('realsense-camera')
    repos.remove('rtsp-camera')
    repos.remove('slamtec-rplidar-driver')
    repos.remove('turtlebot3')
    repos.remove('velodyne-vlp-16')
    repos.remove('ydlidar-tg30')
    repos.remove('sick-safety-nanoscan3')
    repos.remove('omron-ld60-driver')

    repos.remove('.filter_only_updated_items.py')  # Unknown
    repos.remove('client-service-example')         # No "parameters" section in json file
    repos.remove('arducam-jetson')                 # No docker file
    repos.remove('cogniteam-anomaly-detection')    # No docker image
    repos.remove('cogniteam-coverage-exploration') # No docker file
    repos.remove('hamster-driver')                 # No "binds" section in json file for hamster simulation repo
    repos.remove('hamster-v8-environment')         # hamster environment should not be in this repo, driver only
    repos.remove('hector-mapping')                 # No base_frame parameter in "hector-mapping-hd" json
    repos.remove('isaac-skeleton-viewer')          # Do not contain docker file and docker image
    repos.remove('jetson-isaac-skeleton')          # No "parameters section in json file"
    # repos.remove('nextVision_cam')                 # image is missing
    repos.remove('odom-republisher')               # No docker directory
    repos.remove('openvino')                       # No docker file
    repos.remove('ouster-driver')                  # No docker directory
    repos.remove('ros-tutorials-listener')         # No docker directory
    repos.remove('ros-tutorials-talker')           # No docker directory, no image
    repos.remove('slam-toolbox')                   # No "parameters" section, ROS2
    repos.remove('vosk-speech-to-text')            # Need to add "commands" section at the json file

    for repo in sorted(repos):
        print(repo)
        repo_dir_path = os.path.join(library_dir_path, repo)
        dirs = os.listdir(repo_dir_path)
        files_to_remove = ['README.md', 'docker', '.gitignore', '.catkin_workspace']

        for file_name in files_to_remove:
            try:
                dirs.remove(file_name)
            except ValueError:
                pass

        f = open(os.path.join(repo_dir_path, 'README.md'), 'w')
        readme = ""
        for dir in dirs:
            readme += generate_repo_readme(repo_dir_path, dir)
            readme += '\n\n'
        f.write(readme)

generate_library_reademe()

# library_dir_path = os.path.dirname(__file__)
# repo_dir_path = os.path.join(library_dir_path, 'hector-mapping')
# readme = generate_repo_readme(repo_dir_path, 'hector-mapping')
# print(readme)