node {
    
    stage('Git'){
        git 'https://github.com/awsak/Deployment-on-Kubernetes.git'
    }

     stage('ssh'){
	sshagent(['ansible_server']) {
    		sh 'ssh -o StrictHostKeyChecking=no  ubuntu@4.240.84.4'
		sh 'scp /var/lib/jenkins/workspace/project/*  ubuntu@4.240.84.4:/home/ubuntu'
	}
     }
}
