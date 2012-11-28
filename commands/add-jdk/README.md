Usage
-----

* Without options configures Jenkins to use the system's default Java installation (i.e. "JAVA_HOME=/etc/alternatives/java_sdk"):
<pre>
[anthony@centos62 ~]$ rerun jenkins:add-jdk
reloading http://localhost:8080
reloading http://localhost:8080
</pre>
... reloading the Jenkins configuration (without restarting the instance) to make the configuration change current.

* Can also be used to configure additional Java installations. For example the latest Oracle Java 1.7 JDK:
<pre>
[root@centos62 java]# pwd
/usr/java
[root@centos62 java]# tar xf /tmp/jdk-7u9-linux-x64.tar.gz 
[root@centos62 java]# /usr/java/jdk1.7.0_09/bin/java -version
java version "1.7.0_09"
Java(TM) SE Runtime Environment (build 1.7.0_09-b05)
Java HotSpot(TM) 64-Bit Server VM (build 23.5-b02, mixed mode)
</pre>
... is configured as follows:
<pre>
[anthony@centos62 ~]$ rerun jenkins:add-jdk --jdk-name jdk1.7.0_09 --jdk-home /usr/java/jdk1.7.0_09
reloading http://localhost:8080
</pre>
... navigate to the main Jenkins configuration page (e.g. "http://centos62:8080/configure") to review the installations.
