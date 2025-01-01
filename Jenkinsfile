pipeline {
  agent {
    docker { image 'my_cmake_builder' }
  }
  environment {
    // GIT_URL = 'git@github.com:jan-tomsa/cmake-proj1.git'
    GIT_URL = 'https://github.com/jan-tomsa/cmake-proj1.git'
  }

  stages {
    stage('Checkout') {
      steps {
        checkout([$class: 'GitSCM',
                    branches: [[name: '*/main']], // Specify the branch you want to check out
                    doGenerateSubmoduleConfigurations: false,
                    extensions: [],
                    userRemoteConfigs: [[url: env.GIT_URL]]])
            }
        }
        
    stage('Build') {
      steps {
        echo 'Building...'
        sh 'cmake -B ./build -S .'
        sh 'cmake --build ./build'
      }
    }
        
    stage('Test') {
      steps {
        sh 'pwd'
      }
    }
  }
}