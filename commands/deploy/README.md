Usage
-----

* Deploy or re-deploy the Jenkins instance:
<pre>
[anthony@centos62 ~]$ rerun jenkins:deploy
Failed to set locale, defaulting to C
Warning: RPMDB altered outside of yum.
warning: /etc/yum.repos.d/jenkins.repo created as /etc/yum.repos.d/jenkins.repo.rpmnew
Starting Jenkins                                           [  OK  ]
</pre>
... produces an "out-of-the-box" installation of Jenkins as a system service configured to start with the system:
<pre>
[anthony@centos62 ~]$ chkconfig --list jenkins
jenkins         0:off   1:off   2:off   3:on    4:off   5:on    6:off
</pre>
... accessible on port 8080 (e.g. "http://centos62:8080").
