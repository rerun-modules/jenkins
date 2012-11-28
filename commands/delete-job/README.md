Usage
-----

Uses the Jenkins web API to delete jobs.

* Provide a name and config.xml file to automatically delete a job (and all it's execution history, etc). e.g:
<pre>
[anthony@centos62 ~]$ rerun jenkins:delete-job --jobname rerun-hello-world
</pre>
... navigate to the Jenkins home page (e.g. "http://centos62:8080") to see the job list.
