node {
    
    stage('Git'){
        git 'https://github.com/awsak/Deployment-on-Kubernetes.git'
    }

     stage('ssh'){
	sshagent(['ansible_ssh']) {
    		sh 'ssh -o StrictHostKeyChecking=no  ubuntu@4.240.84.4'
		sh 'scp /var/lib/jenkins/workspace/pipeline/*  ubuntu@4.240.84.4:/home/ubuntu'
	}
     }
     stage('docker_build_image'){
        sshagent(['ansible_ssh']) { 
		sh 'ssh -o StrictHostKeyChecking=no -A ubuntu@4.240.84.4 "cd /home/ubuntu && sudo docker image build -t $JOB_NAME:v1.$BUILD_ID ."'
	}
     }
}
