[![CircleCI](https://dl.circleci.com/status-badge/img/gh/hongduc2994/udacity-proj4/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/hongduc2994/udacity-proj4/tree/master)
## Project Overview
Small Python Flask application project to showcase `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
### 1. Running on Window

```bash
py -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
py -m virtualenv .devops
source .devops/Scripts/activate
```

### 2. Running on Linux-based OS

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv .devops
source .devops/Scripts/activate
```

* Run `make install` to install the necessary dependencies

### 3. Running application
NOTE: For ease of use make sure to alias kubectl beforehand
`alias kubectl='minikube kubectl --'`
#### 1. Run in local environment:  
Run `python app.py`

#### 2. Run in Docker:
1. Run `./run_docker.sh` to containerize the application to docker container.
2. Run `./make_prediction.sh` to test the predict API on local.

#### 3. Run in Kubernetes:  
1. Run `./upload_docker.sh` to push the docker image into docker hub.
2. Run `minikube start` to start the local minikube cluster
3. Run `./run_kubernetes.sh` and make sure the pod is in [Running] state
4. Run `./make_prediction.sh` in another terminal

##### 4. Clean up kubernetes cluster
1. Run `kubectl delete pod ${pod name}`
2. Run `minikube stop`
