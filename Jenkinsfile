node {
    stage('Clone repository') {
        git credentialsId: 'github-access', url: 'https://github.com/dongtae99/rolling-paper.git'
    }
    stage('Build image') {
        dockerImage = docker.build("dongtae9901/node-front:1.0")
    }
    stage('Push image') {
        withDockerRegistry([ credentialsId: "docker-access", url: "" ]) {
            dockerImage.push()
        }
    }
}

