Usage
-----

Uses the Jenkins web API to "push build now button" for the specified job!

* Provide a name and config.xml file to automatically create a job. e.g:
<pre>
[anthony@centos62 ~]$ rerun jenkins:build-now --jobname rerun-hello-world
</pre>
... navigate to the Jenkins home page (e.g. "http://centos62:8080") to see the jobs.
