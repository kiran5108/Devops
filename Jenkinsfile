pipeline {
    agent {
  label 'clabel'
    }
    stages{
        stage('get code') {
            steps{
                echo "getting the jenkins file from github"
                git branch: 'main', url: 'https://github.com/kiran5108/Devops.git'
            }
        }

        stage('check main and makefile') {
            steps{
                sh '''
                echo "$(pwd)"
                if [ -f main.c ] && [ -f Makefile ];then
                echo "required files exists"
                else
                echo "files does not exists"
                exit 1
                fi
             '''
           }
        }

        stage('build') {
            steps{
                sh '''
                   make
                '''
            }
        }

        stage('test'){
            steps{
                sh 'echo "this is testing stage"'
            }
        }
        stage('archive and save'){
            steps{
                archiveArtifacts artifacts: 'Application.exe', followSymlinks: false
                sh 'scp -v -o StrictHostKeyChecking=no *.exe ubuntu@172.31.57.58:/home/ubuntu/buildc/Application_$(date +%d_%m_%Y_%H_%M_%S).exe'
            }
        }

}
}
