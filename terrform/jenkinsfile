pipeline {
    agent ('any')

stages {

stage('Checkout') {

steps {

checkout([$class: 'GitSCM', branches: [[name: '*/terraform']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rajparmar30/myrepo.git']]])

}

}

stage ('terraform') {

steps {
        {
                withCredentials([$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AKIASAJ6XGK47GHM4HNF', credentialsId: 'IqHUJTqlNhJtFQADmCblL1CyWwNHYOmLnE3DBl02', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']) 
                {
                
                sh 'terraform init'
                }
                
            }    
}
}






stage ('terraform plan') {
    
    steps {
                sh 'echo "terraform plan and apply start "'
                sh '''
                    terraform plan 
                    terraform apply
                '''
            }
            
}
}
}



