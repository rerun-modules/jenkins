jenkins
=======

Rerun module to manage Jenkins installation, configuration and operations

<pre>
[anthony@centos62-dukesbank-rerun jenkins]$ rerun jenkins
Available commands in module, "/home/anthony/src/rerun-modules/modules/jenkins":
configure-rundeck-plugin: "Configure the Jenkins Rundeck plugin"
   [ --password|-p <admin>]: "Rundeck password"
   [ --restart|-r <false>]: "Whether or not to immediately restart Jenkins"
   [ --url|-u <http://localhost:4440>]: "Rundeck URL"
   [ --username|-u <admin>]: "Rundeck username"
create-job: "Create a new job using the web API"
    --file|-f <>: "Configuration XML file that defines the job"
    --jobname|-j <>: "Name of the job to create"
   [ --url|-u <http://localhost:8080>]: "Jenkins server URL"
get-job: "Get a job's configuration file using the web API"
    --file|-f <>: "Configuration XML file that defines the job"
    --jobname|-j <>: "Name of the job to create"
   [ --url|-u <http://localhost:8080>]: "Jenkins server URL"
install-plugin: "Install plugin from the web"
    --name|-n <>: "Name of the plugin to install"
   [ --restart|-r <false>]: "Whether or not to immediately restart Jenkins"
   [ --url|-u <http://updates.jenkins-ci.org>]: "Web site from which to download plugins"
   [ --version|-v <latest>]: "Version of the plugin to install"
install: "Install Jenkins on RedHat distributions using Yum"
restart: "Restart Jenkins"
start: "Start Jenkins"
stop: "Stop Jenkins"
update-job: "Update an existing job using the web API"
    --file|-f <>: "Configuration XML file that defines the job"
    --jobname|-j <>: "Name of the job to create"
   [ --url|-u <http://localhost:8080>]: "Jenkins server URL"
</pre>

Note that jenkins:get-job relies on xmlstarlet(1) (which is available from [EPEL](http://fedoraproject.org/wiki/EPEL)).
