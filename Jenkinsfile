pipeline {
    agent any
    options { disableConcurrentBuilds() }

    stages {
        stage('Jekyll Build + git push') {
            steps {
                sh '''#!/bin/bash -e
                    # setup ssh keys for git access
                    sshdir=~/workspace/wpv/wwwTestWpvPvAt.ssh
                    mkdir -p $sshdir
                    sudo rm -rf $sshdir/*
                    sudo cp -p ~/.ssh/config $sshdir/
                    sudo cp -p ~/.ssh/id_deploy_wwwTestWpvPvAt* $sshdir/
                    sudo cp -p ~/.ssh/known_hosts $sshdir/
                    sudo chown -R 0:0 $sshdir
                    # generate html
                    docker run -i --rm --name=jekyll \
                        -u 0 \
                        -v ~/workspace/wpv/wwwTestWpvPvAt:/var/data:Z \
                        -v ~/workspace/wpv/wwwTestWpvPvAt.ssh:/root/.ssh:Z \
                        r2h2/jekyll_adoc ./build.sh
                '''
            }
        }
    }
}
