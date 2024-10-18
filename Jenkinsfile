pipeline {
    agent any
    stages {
        stage("Checkout repository") {
            steps {
	        checkout scmGit(branches: [[name: '*/main']],
            extensions: [[$class: 'CloneOption', noTags: true, shallow: true]],
            userRemoteConfigs: [[credentialsId: 'GitHub-Token', url: 'https://github.com/Gerges-Creative/CI-CD-Graduation-Project.git']])
	        }
        }
        stage("Deploy to Server") {
    	    steps {
                sshagent(['App-Deployment']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no root@104.248.28.246 "
                            cd /home/CI-CD-Graduation-Project &&
                            git pull origin main
                        "
                    '''
                }
	        }
	    }
        stage("Check merging conflicts") {
            steps {
                echo 'Check if git pull working without any conflicts.'
            }
        }
    }
}
