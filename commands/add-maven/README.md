Usage
-----

* Without options configures Jenkins to use the system's default Maven installation (i.e. "MAVEN_HOME=/usr/share/maven"):
<pre>
[anthony@centos62 ~]$ rerun jenkins:add-maven
</pre>
... the installation won't become available until Jenkins is restarted.

* With the restart option configures Jenkins to use the system's default Maven installation and restarts Jenkins to make the configuration current:
<pre>
[anthony@centos62 ~]$ rerun jenkins:add-maven --restart true
Shutting down Jenkins                                      [  OK  ]
Starting Jenkins                                           [  OK  ]
</pre>

* Can also be used to configure additional Maven installations. For example an older version of Maven 2:
<pre>
[root@centos62 opt]# pwd
/opt
[root@centos62 opt]# unzip -q /tmp/apache-maven-2.0.9-bin.zip 
[root@centos62 opt]# /opt/apache-maven-2.0.9/bin/mvn -version
Warning: JAVA_HOME environment variable is not set.
Maven version: 2.0.9
Java version: 1.6.0_22
OS name: "linux" version: "2.6.32-220.el6.x86_64" arch: "amd64" Family: "unix"
</pre>
... is configured as follows:
<pre>
[anthony@centos62 ~]$ rerun jenkins:add-maven --restart true --maven-name apache-maven-2.0.9 --maven-home /opt/apache-maven-2.0.9
Shutting down Jenkins                                      [  OK  ]
Starting Jenkins                                           [  OK  ]
</pre>
... navigate to the main Jenkins configuration page (e.g. "http://centos62:8080/configure") to review the installations.
