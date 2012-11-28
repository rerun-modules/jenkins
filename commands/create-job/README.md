Usage
-----

Uses the Jenkins web API to create jobs.

* Provide a name and config.xml file to automatically create a job. e.g:
<pre>
[anthony@centos62 ~]$ rerun jenkins:create-job --jobname rerun-hello-world --file /usr/lib/rerun/modules/jenkins/examples/jobs/rerun-hello-world/config.xml
</pre>
... navigate to the Jenkins home page (e.g. "http://centos62:8080") to see the jobs.
