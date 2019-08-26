properties([disableConcurrentBuilds()])

pipeline {
  agent {
    label 'master'
  }
  option {
    buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
    timestamps()
  }
  stages {
    stage ("Create AWS EC2 Instance") {
      steps {
        ansiblePlaybook(playbook: 'create-ec2.yml')
      }
    }
  }
}