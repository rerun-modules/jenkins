Usage
-----

* Remove Jenkins from the system while preserving the contents of /var/lib/jenkins:
<pre>
[anthony@centos62 jenkins]$ rerun jenkins:remove 
Shutting down Jenkins                                      [  OK  ]
Failed to set locale, defaulting to C
warning: /etc/yum.repos.d/jenkins.repo saved as /etc/yum.repos.d/jenkins.repo.rpmsave
</pre>

* Remove Jenkins from the system and purge the contents of /var/lib/jenkins:
<pre>
[anthony@centos62 jenkins]$ rerun jenkins:remove --cleanup true
.
.
.
</pre>
