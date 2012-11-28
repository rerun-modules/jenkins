Do you drink your own Kool-Aid and manage your Jenkins job configuration in a CI loop? Shame on you if you're not ready to blow away your Jenkins setup at any moment and rebuild it <i>automatically</i> from source!

This [Rerun](http://rerun.github.com/rerun) module automates standard practice for installation, management and operations of [Jenkins](http://jenkins-ci.org) based on the [Red Hat/CentOS/Fedora](http://pkg.jenkins-ci.org/redhat) distribution that results in the instance running as the jenkins user out of /var/lib/jenkins.

The Jenkins instance deployed by the module does not have authentication, authorization and access control enabled and has no provision for automicatically configuring agents.

The commands are written with the expectation that they will be run by a non-root user that has sudo(8) access to run a number of commands (listed below).

The module has the ability to deploy and remove the Jenkins instance as well as managing its operation and configuration.

Additionally, the module can manage the full-lifecyle of individual jobs.

* Use jenkins:deploy and jenkins:remove to create and destroy the Jenkins instance
* Use jenkins:start, jenkins:stop, jenkins:status, jenkins:restart to manage the running Jenkins instance
* Use jenkins:add-jdk and jenkins:add-maven to manage configuring new installations in the Jenkins instance
* Use jenkins:install-plugin to automate plugin installation
* Use jenkins:configure-rundeck-plugin to configure the Jenkins Rundeck plugin.
* Use jenkins:get-job, jenkins:create-job, jenkins:update-job and jenkins:delete-job to manage jobs as XML source
* Use jenkins:build-now to force a job to build immediately

Consult README.md in the command and options directories for further description of using these commands.

Requirements
------------

* Internet access to acquire installation RPMs 
* A Red Hat/CentOS 5 or 6 instance
* No service running on port 8080 and no firewall blocking that port
* A non-root user that has non-interactive sudo(8) access to run "sh" and "wget" as the jenkins user and the "cp", "rm", "rpm", "service", "tail", "test", "wget" and "yum" commands as the root user (or simply add the user to the "wheel" group and enable carte-blanche access ;-).

Installation
------------
The following instructions describe how to install Rerun itself and the set of modules necessary to use the Jenkins module (and more!):

* Install the latest [Rerun](http://rerun.github.com/rerun) and Rerun modules by following the [Rerun installation](https://github.com/rerun/rerun/wiki/Installation)

* Review the available modules. e.g:
<pre>
[root@centos62 ~]# which rerun
/usr/bin/rerun
[root@centos62 ~]# rerun
Available modules in "/usr/lib/rerun/modules":
  apache-maven: "Rerun module to manage the apache-maven distribution"
  github: "Rerun module to manage working with Github"
  jboss-as: "Rerun module to manage working with the JBoss application server"
  jenkins: "Rerun module to manage Jenkins installation, configuration and operations"
  mysql: "Rerun module to manage working with the MySQL database server"
  rpm: "Manage the full life-cycle of RPM packages"
  rundeck: "Rerun module to manage Rundeck installation configuration and operations"
  ssh: "Rerun module for managing secure shell client and server usage"
  stubbs: "Simple rerun module builder"
</pre>

* Note that several commands rely on xmlstarlet(1) which is available for installation from [EPEL](http://fedoraproject.org/wiki/EPEL):
<pre>
[root@centos62 ~]# yum -y install xmlstarlet
.
.
.
Complete!
</pre>

