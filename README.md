This module automates installation and management of [Jenkins](http://jenkins-ci.org) based on the [Red Hat/CentOS/Fedora](http://pkg.jenkins-ci.org/redhat) distribution that results in the instance running as the jenkins user out of /var/lib/jenkins.

The Jenkins instance deployed by the module does not have authentication, authorization and access control enabled and has no provision for automicatically configuring agents.

The commands are written with the expectation that they will be run by a non-root user that has sudo(8) access to run a number of commands (listed below).

The module has the ability to deploy and remove the Jenkins instance as well as managing its operation and configuration.

Additionally, the module can manage the full-lifecyle of individual jobs.

Requirements
------------

* Internet access to acquire installation RPMs 
* A Red Hat/CentOS 5 or 6 instance
* No service running on port 8080 and no firewall blocking that port

* A non-root user with the following level of non-interactive sudo(8) access:
<pre>
sudo -u jenkins /bin/sh
sudo -u jenkins wget
sudo /sbin/service jenkins
sudo cp
sudo rm
sudo rpm 
sudo tail
sudo test
sudo wget
sudo yum
</pre>
... or simply add the user to the "wheel" group and enable carte-blanche.

Installation
------------

* Install [Rerun](http://rerun.github.com/rerun) itself by obtaining the latest "rerun" RPM package link from [Rerun Downloads](https://github.com/rerun/rerun/downloads) page and executing the following command (replacing example URL):
<pre>
[root@centos62 ~]# rpm -Uvh https://github.com/downloads/rerun/rerun/rerun-1.0-124.noarch.rpm
Retrieving https://github.com/downloads/rerun/rerun/rerun-1.0-124.noarch.rpm
Preparing...                ########################################### [100%]
   1:rerun                  ########################################### [100%]
</pre>

* Install the latest version of the rerun-modules Yum repo definition by obtaining the latest "rerun-modules-repo" (<i>not</i> "rerun-modules-yum-repo")  RPM package link from [Rerun Modules Downloads](https://github.com/rerun-modules/rerun-modules/downloads) and executing the following command (replacing example URL): 
<pre>
[root@centos62 ~]# rpm -Uvh https://github.com/downloads/rerun-modules/rerun-modules/rerun-modules-repo-1.0-21.noarch.rpm
Retrieving https://github.com/downloads/rerun-modules/rerun-modules/rerun-modules-repo-1.0-21.noarch.rpm
Preparing...                ########################################### [100%]
   1:rerun-modules-repo     ########################################### [100%]
</pre>

* Install all the latest rerun modules (including this Jenkins module):
<pre>
[root@centos62 ~]# yum -y --disablerepo '*' --enablerepo 'rerun-modules' install '*'
.
.
.
Complete!
</pre>

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

Usage
-----

* Use jenkins:deploy and jenkins:remove to create and destroy the Jenkins instance
* Use jenkins:start, jenkins:stop, jenkins:status, jenkins:restart to manage the running Jenkins instance
* Use jenkins:add-jdk and jenkins:add-maven to manage configuring new installations in the Jenkins instance
* Use jenkins:install-plugin to automate plugin installation
* Use jenkins:configure-rundeck-plugin to configure the Jenkins Rundeck plugin.
* Use jenkins:get-job, jenkins:create-job, jenkins:update-job and jenkins:delete-job to manage jobs as XML source
* Use jenkins:build-now to force a job to build immediately
