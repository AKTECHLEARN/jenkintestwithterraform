pipeline {
    agent any

    environment {
        TF_VAR_subscription_id = credentials('azure-subscription-id')
        TF_VAR_client_id       = credentials('azure-client-id')
        TF_VAR_client_secret   = credentials('azure-client-secret')
        TF_VAR_tenant_id       = credentials('azure-tenant-id')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/AKTECHLEARN/jenkintestwithterraform'
            }
        }

        stage('Install Terraform (if needed)') {
            steps {
                sh '''
                    echo Installing Terraform...
                    sudo wget -q https://releases.hashicorp.com/terraform/1.9.6/terraform_1.9.6_linux_amd64.zip
                    sudo unzip -o terraform_1.9.6_linux_amd64.zip -d /usr/local/bin/
                    terraform version
                '''
            }
        }

        stage('Initialize Terraform') {
            steps {
                sh 'terraform init -upgrade'
            }
        }

        stage('Validate Terraform') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Plan Terraform') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Apply Terraform') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
