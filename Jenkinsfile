pipeline {
    
    agent any

    stages {

        stage("build") {

            steps {
	        checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'GitHub-Token', url: 'https://github.com/Gerges-Creative/CI-CD-Graduation-Project.git']])
		echo 'check jenkins is listening'
	    }
         }

         stage("deploy") {

	     steps {
		 echo 'deploying the application...'
	     }
	 }
    }
}
