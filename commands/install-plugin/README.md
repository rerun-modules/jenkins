Usage
-----

Instead of installing plugins interactively from the Jenkins UI, this command facilitates automatic installation (from "http://updates.jenkins-ci.org" or an alternate site) and restarts Jenkins to make the plugin available as necessary.

* The simplest way to use the command is to just provide a plugin name:
<pre>
[anthony@centos62 ~]$ rerun jenkins:install-plugin --plugin-name git
[anthony@centos62 ~]$ ls /var/lib/jenkins/plugins/git.hpi 
/var/lib/jenkins/plugins/git.hpi
</pre>

* The restart option makes the installed plugin available for use:
<pre>
[anthony@centos62 ~]$ rerun jenkins:install-plugin --plugin-name rundeck --restart true
Shutting down Jenkins                                      [  OK  ]
Starting Jenkins                                           [  OK  ]
</pre>
... navigate to the installed plugin page (e.g. "http://centos62:8080/pluginManager/installed") to review installed plugins.
