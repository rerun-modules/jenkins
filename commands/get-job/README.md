Usage
-----

Uses the Jenkins web API to get a job's config.xml file.

* Provide a job name and a target config.xml file. e.g:
<pre>
[anthony@centos62 ~]$ rerun jenkins:get-job --jobname rerun-hello-world --file /tmp/config.xml
[anthony@centos62 ~]$ ls -l /tmp/config.xml
-rw-rw-r--. 1 anthony anthony 685 Nov 28 10:07 /tmp/config.xml
[anthony@centos62 ~]$ cat /tmp/config.xml
<?xml version="1.0" encoding="UTF-8"?>
<project>
  <actions/>
  <description>Example job configured by the Rerun Jenkins module</description>
  <keepDependencies>false</keepDependencies>
  <properties/>
  <scm class="hudson.scm.NullSCM"/>
  <canRoam>true</canRoam>
  <disabled>false</disabled>
  <blockBuildWhenDownstreamBuilding>false</blockBuildWhenDownstreamBuilding>
  <blockBuildWhenUpstreamBuilding>false</blockBuildWhenUpstreamBuilding>
  <triggers class="vector"/>
  <concurrentBuild>false</concurrentBuild>
  <builders>
    <hudson.tasks.Shell>
      <command>echo "Hello World!"</command>
    </hudson.tasks.Shell>
  </builders>
  <publishers/>
  <buildWrappers/>
</project>
</pre>
... the XML is cleanly formatted using [XMLStarlet](http://xmlstar.sourceforge.net) ready to be committed as source.
