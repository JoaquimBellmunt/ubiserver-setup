from fabric.api import env, local, put, run, cd

# the user to use for the remote commands
env.user = 'ubi'

# the servers where the commands are executed
env.hosts = ['ubi@localhost']

env.directory = {
    'localhost': '/var/www/ubirest'
}

env.wsgi_name = {
    'localhost': 'ubirest_wsgi.py'
}


def pack():
    # create a new source distribution as tarball
    local('python setup.py sdist --formats=gztar', capture=False)


def deploy():
    # figure out the release name and version
    dist = local('python setup.py --fullname', capture=True).strip()
    # upload the source tarball to the temporary folder on the server
    put('dist/%s.tar.gz' % dist, '/tmp/ubirest.tar.gz')
    # create a place where we can unzip the tarball, then enter
    # that directory and unzip it
    run('mkdir /tmp/ubirest')
    with cd('/tmp/ubirest'):
        run('tar xzf /tmp/ubirest.tar.gz')
    with cd('/tmp/ubirest/%s' % dist):
        # now setup the package with our virtual environment's
        # python interpreter
        run('%s/env/bin/python setup.py install' % env.directory[env.host])
    # now that all is set up, delete the folder again
    run('rm -rf /tmp/ubirest /tmp/ubirest.tar.gz')
    # and finally touch the .wsgi file so that mod_wsgi triggers
    # a reload of the application
    run('touch %s/%s' % (env.directory[env.host], env.wsgi_name[env.host]))
    # run('touch %s/ubirest_wsgi.py' % SERVER_PREFIX)


def clean():
    # clean the local repository
    local('python setup.py clean --all')

    # cleanup the server
    run('rm -rf /tmp/ubirest /tmp/ubirest.tar.gz')
