Description: debian.sh
 Mostly Pointless
 .
 awesome (3.5.6-1) unstable; urgency=medium
 .
   * added a script I can use to do nightlies more easily

---
The information above should follow the Patch Tagging Guidelines, please
checkout http://dep.debian.net/deps/dep3/ to learn about the format. Here
are templates for supplementary fields that you might want to add:

Origin: <vendor|upstream|other>, <url of original patch>
Bug: <url in upstream bugtracker>
Bug-Debian: https://bugs.debian.org/<bugnumber>
Bug-Ubuntu: https://launchpad.net/bugs/<bugnumber>
Forwarded: <no|not-needed|url proving that it has been forwarded>
Reviewed-By: <name and email of someone who approved the patch>
Last-Update: <YYYY-MM-DD>

--- /dev/null
+++ awesome-3.5.6/debian.sh
@@ -0,0 +1,2 @@
+#! /bin/sh
+debuild
