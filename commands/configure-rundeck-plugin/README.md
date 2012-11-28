Usage
-----

Automate the configuration of the Rundeck username, password and URL.

* Without options the command uses default Rundeck credentials ("admin/admin") and URL ("http://localhost:4440"):
<pre>
[anthony@centos62 ~]$ rerun jenkins:configure-rundeck-plugin
</pre>

* The restart option is used to restart Jenkins to make the configuration current:
<pre>
[anthony@centos62 ~]$ rerun jenkins:configure-rundeck-plugin --restart true
Shutting down Jenkins                                      [  OK  ]
Starting Jenkins                                           [  OK  ]
</pre>
... navigate to the main Jenkins configuration page (e.g. "http://centos62:8080/configure") to review the configuration.
