docker-awscli
=============

[Docker](https://www.docker.com/) image of [AWS CDK](https://aws.amazon.com/es/cli/) with necessary tools for build our projects

This image adds several tools used by our integration and deployment processes, like jq, curl, etc

Usage
--------------

    docker run -it --rm --name my-running-script aiwin/aws-cdk:latest help


Build
--------------

Run `build.sh` script to build and push the image to default location

    aiwin/aws-cdk:latest

If you want to build and push the image to diferent location, define the following
variables before the execution of the script:

- REPOSITORY. Docker repository
- REGISTRY. Docker registry
- TAG. Tag or version
