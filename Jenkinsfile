pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh """
                    docker login -u $DOCKER_REGISTRY_USER -p $DOCKER_REGISTRY_PWD $DOCKER_REGISTRY_URL
                    docker build -t $DOCKER_REGISTRY_URL/ad4/robotaxi-$BRANCH_NAME:latest -f .jenkins/Dockerfile .
                    docker push $DOCKER_REGISTRY_URL/ad4/robotaxi-$BRANCH_NAME:latest
                """
            }
        }
    }
}
