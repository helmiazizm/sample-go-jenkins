node {
    def root = tool type: 'go', name: 'Go 1.18'

    withEnv(["GOROOT=${root}", "PATH+GO=${root}/bin"]) {
        stage 'Checkout'
        git url: 'https://github.com/helmiazizm/sample-go-jenkins.git'

        stage 'Pre-test'
        sh 'go version'

        stage 'Test'
        sh 'go test -cover'

        stage 'Build'
        sh 'go build .'

        stage 'Deploy'

    }
}