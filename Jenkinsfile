properties([disableConcurrentBuilds()])

pipeline {
  agent {
    label 'master'
  }
  options {
    buildDiscarder(logRotator(numToKeepStr: '10'))
    timestamps()
  }

  triggers {
    pollSCM('* * * * *')
  }

  environment{
    AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
  }

  stages {
    stage ("Create AWS EC2 Instance") {
      steps {
//        ansiblePlaybook(playbook: 'create-ec2.yml')
//        ansibleVault(action: 'encrypt', input 'scripts/gvv2012.pem', vaultCredentialsID 'gvv2012-key-pass')
        sh 'ls scripts/'
        sh 'cat scripts/gvv2012.pem'
//        ansiblePlaybook(credentialsId: 'gvv2012', inventory: 'inventory/ec2.py', playbook: 'install-app.yml')
      }
    }
  }
}