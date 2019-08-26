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
        ansiblePlaybook(playbook: 'install-app.yml', inventory: 'inventory/ec2.py', credentialsId: 'gvv2012_EC2_Key' )
      }
    }
  }
}