import os
import json
import requests


def generate_headline(repo_name:str):
    return f"# {repo_name.title()}"

def generate_img_src(repo_name):
    try:
        files = os.listdir(os.path.join(dir_path, repo_name, repo_name))
        files.remove('nimbusc.json')
        img_name = files[0]
        return f"<img src=\"./{repo_name}/{img_name}\" alt=\"{repo_name}\" width=\"400\"/>"
    except Exception as e:
        print('Error while trying to generate image link')
        print(str(e))

def extract_image_from_json(dir_path, repo_name):
    try:
        json_file = open(os.path.join(dir_path, repo_name, repo_name, 'nimbusc.json'), 'r')
        json_content = json.load(json_file)
        docker_image = json_content['environment']['dockerInfo']['image']    
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
        docker_file = open(os.path.join(dir_path, repo_name, 'docker', 'Dockerfile'), 'r')
        ros_version = docker_file.read().split('\n')[0].split(':')[-1]
        return  f"* ROS version <b>{ros_version}</b>"
    except Exception as e:
        print('Error while trying to extract ros version from Dockerfile')
        print(str(e))

def generate_description(dir_path, repo_name):
    try:
        json_file = open(os.path.join(dir_path, repo_name, repo_name, 'nimbusc.json'), 'r')
        json_content = json.load(json_file)
        description = json_content['description']
        return f"# Short description\n* {description}"
    except Exception as e:
        print('Error while trying to extract description from json file')
        print(str(e))

def generate_example_usage(dir_path, repo_name):
    try:
        json_file = open(os.path.join(dir_path, repo_name, repo_name, 'nimbusc.json'), 'r')
        json_content = json.load(json_file)
        commands = json_content['environment']['dockerInfo']['commands']
        return f"# Example usage\n```\ndocker run -it cognimbus/{repo_name} {' '.join(commands[0:3])}\n```"
    except Exception as e:
        print("Error while trying to extract commands from json file")
        print(str(e))

def generate_repo_readme(dir_path, repo_name):
    f = open(os.path.join(dir_path, repo_name, 'README.md'), 'w')
    f.write(generate_headline(repo_name))
    f.write('\n\n')
    f.write(generate_img_src(repo_name))
    f.write('\n\n')
    # TODO: ROS project page
    f.write(generate_dockerhub_image(dir_path, repo_name))
    f.write('\n')
    f.write(generate_supported_arch(dir_path, repo_name))
    f.write('\n')
    f.write(generate_ros_version(dir_path, repo_name))
    f.write('\n\n')
    f.write(generate_description(dir_path, repo_name))
    f.write('\n\n')
    f.write(generate_example_usage(dir_path, repo_name))

def generate_library_reademe():
    dir_path = os.path.dirname(__file__)
    for dir in os.listdir(dir_path):
        generate_repo_readme(dir_path, dir)

dir_path = os.path.dirname(__file__)
generate_repo_readme(dir_path, 'map-server')
