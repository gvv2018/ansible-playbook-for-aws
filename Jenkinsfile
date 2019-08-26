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
        sh 'ls -lah'
        ansiblePlaybook(playbook: 'create-ec2.yml')
      }
    }
  }
}
