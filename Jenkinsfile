node {
    def root = "/usr/local/go/bin/go"

    stage 'Checkout'
    git url: 'https://github.com/helmiazizm/sample-go-jenkins.git'

    stage 'Pre-test'
    sh "${root} version"

    stage 'Test'
    sh "${root} test ./... -cover"

    stage 'Build'
    sh "${root} build ./..."
}