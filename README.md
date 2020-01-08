[![CircleCI](https://circleci.com/gh/yukiegosapporo/devops_mlm.svg?style=svg)](https://circleci.com/gh/yukiegosapporo/devops_mlm)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

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


## Project summary

In this project, we deploy a scalable ML API with CI/CD.  
For ML, we use a given ML app trained with `sklearn` as a `flask` app.  
Our CI/CD checks for now linting only with `pylint` and `hadolint`.  
The app is in docker container and can be deployable in both docker and kubernetes.  

Actual steps taken are as follows

- Complete the Dockerfile
- Run a Container & Make a Prediction
- Improve Logging & Save Output
- Upload the Docker Image
- Configure Kubernetes to Run Locally
- Deploy with Kubernetes and Save Output Logs
- Delete Cluster
- CircleCI Integration
- README.md

## How to run

### Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

Optionally, you can run `./make_prediction.sh` to test your deployment.

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


## Project structure

```
├── Dockerfile: Main docker file
├── Makefile: Collection of shell files
├── README.md
├── app.py: Python Flask app that runs ML job
├── make_prediction.sh: Call a HTTP request to the app
├── model_data
│   ├── boston_housing_prediction.joblib
│   └── housing.csv
├── output_txt_files
│   ├── docker_out.txt: Terminal output from docker
│   └── kubernetes_out.txt: Terminal output from k8s
├── requirements.txt
├── run_docker.sh: Run the app in docker
├── run_kubernetes.sh: Run the app in k8s
└── upload_docker.sh: Upload our docker image
```