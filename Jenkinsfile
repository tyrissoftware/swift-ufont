pipeline {
    agent {
        label 'ios'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Test') {
            steps {
                sh "swift test --enable-code-coverage"
            }
        }

        stage('Coverage') {
            steps {
                sh "xcrun llvm-cov show -output-dir=output -format=html -instr-profile=\$(find .build -name default.profdata) \$(find .build -name swift-ufontPackageTests)"
            }
            post {
                success {
					sendSuccessMessageToMatterMost()
				}
				
				failure {
					sendErrorMessageToMatterMost()
				}

                always {
		            publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: 'output', reportFiles: 'index.html', reportName: 'Coverage Report'])					
					cleanWs()
                }				
            }
        }
    }
}

def sendSuccessMessageToMatterMost() {
	try {
	    mattermostSend channel: "#ios_jenkins", color: "good", message: "Success - ${env.JOB_NAME} #${env.BUILD_NUMBER} (${env.BUILD_URL})";
	} catch (ex) {
		echo "Error sending message to mattermost : ${ex}"
	}
}

def sendErrorMessageToMatterMost() {
	try {
	    mattermostSend channel: "#ios_jenkins", color: "danger", message: "Pipeline failed - ${env.JOB_NAME} #${env.BUILD_NUMBER} (${env.BUILD_URL})";
	} catch (ex) {
		echo "Error sending message to mattermost : ${ex}"
	}
}