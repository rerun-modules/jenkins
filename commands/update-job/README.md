Usage
-----

Uses the Jenkins web API to update existing jobs.

* Provide a name and config.xml file to automatically update a job. e.g:
<pre>
[anthony@centos62 ~]$ rerun jenkins:update-job --jobname rerun-maven-test --file /usr/lib/rerun/modules/jenkins/examples/jobs/rerun-maven-test/config.xml
</pre>
... navigate to the Jenkins home page (e.g. "http://centos62:8080") to see the updated job. Note that no execution history is lost.
