node {
    stage('Clone repository') {
        git credentialsId: 'github-access', url: 'https://github.com/본인주소/rolling-paper-fr.git'
    }
    stage('Build image') {
        dockerImage = docker.build("도커ID/node-front:1.0")
    }
    stage('Push image') {
        withDockerRegistry([ credentialsId: "docker-access", url: "" ]) {
            dockerImage.push()
        }
    }
}

