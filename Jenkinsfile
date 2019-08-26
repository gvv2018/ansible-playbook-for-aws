properties([disableConcurrentBuilds()])

pipeline {
  agent {
    label 'master'
  }
  option {
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
