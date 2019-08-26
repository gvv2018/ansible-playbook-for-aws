properties([disableConcurrentBuilds()])

pipeline {
  agent {
    label 'master'
  }
  options {
    timestamps()
  }
  stages {
    stage ("Create AWS EC2 Instance") {
      steps {
        sh 'cat create-ec2.yml'
        ansiblePlaybook(playbook: 'create-ec2.yml')
      }
    }
  }
}
