---
name: Bug report - .M4A Files not playing in NEXTCLOUD
about: Music app cannot play m4a
title: ''
labels: bug
assignees: ''
---

<!--
Thanks for reporting issues back to ownCloud! This is the issue tracker of ownCloud, if you have any support question please check out https://owncloud.org/support

This is the bug tracker for the Server component. Find other components at https://github.com/owncloud/core/blob/master/.github/CONTRIBUTING.md#guidelines

For reporting potential security issues please see https://owncloud.org/security/

To make it possible for us to help you please fill out below information carefully.

Before reporting any issues please make sure that you're using the latest available version of ownCloud, see https://owncloud.org/changelog/
--> 
### Steps to reproduce
1. Download and Enable App  
2. Scan Music (m4a files)
3. Play music

### Expected behaviour
Tell us what should happen
Music should play like the other file types (mp3)
Tested and should play in Chrome, Firefox, etc. Tested on IOS and Android nextcloud apps. 
### Actual behaviour
Tell us what happens instead
Error shows in right top corner (ex): "Error playing file: 01%20-%20Anthem%20For%20The%20Underdog.m4a"
Shows error and the file name. 
### Server configuration
**Operating system**:
Ubuntu 20 LTS
**Web server:**
Apache 2
**Database:**
Maria DB
**PHP version:**
Newest 
**ownCloud version:** (see ownCloud admin page)
Nextcloud 20
**Updated from an older ownCloud or fresh install:**
Fresh Install
**Where did you install ownCloud from:**
Nextcloud.com 
**Signing status (ownCloud 9.0 and above):**

```
Login as admin user into your ownCloud and access 
http://example.com/index.php/settings/integrity/failed 
paste the results into https://gist.github.com/ and puth the link here.
```
No errors have been found. 

**The content of config/config.php:**

```
Log in to the web-UI with an administrator account and click on
'admin' -> 'Generate Config Report' -> 'Download ownCloud config report'
This report includes the config.php settings, the list of activated apps
and other details in a well sanitized form.

or 

If you have access to your command line run e.g.:
sudo -u www-data php occ config:list system
from within your ownCloud installation folder

*ATTENTION:* Do not post your config.php file in public as is. Please use one of the above
methods whenever possible. Both, the generated reports from the web-ui and from occ config:list
consistently remove sensitive data. You still may want to review the report before sending.
If done manually then it is critical for your own privacy to dilligently
remove *all* host names, passwords, usernames, salts and other credentials before posting.
You should assume that attackers find such information and will use them against your systems.
```

**List of activated apps:**

```
If you have access to your command line run e.g.:
sudo -u www-data php occ app:list
from within your ownCloud installation folder.
```

**Are you using external storage, if yes which one:** local/smb/sftp/...

**Are you using encryption:** yes/no

**Are you using an external user-backend, if yes which one:** LDAP/ActiveDirectory/Webdav/...

#### LDAP configuration (delete this part if not used)

```
With access to your command line run e.g.:
sudo -u www-data php occ ldap:show-config
from within your ownCloud installation folder

Without access to your command line download the data/owncloud.db to your local
computer or access your SQL server remotely and run the select query:
SELECT * FROM `oc_appconfig` WHERE `appid` = 'user_ldap';


Eventually replace sensitive data as the name/IP-address of your LDAP server or groups.
```

### Client configuration
**Browser:**

**Operating system:**

### Logs
#### Web server error log
```
Insert your webserver log here
```

#### ownCloud log (data/owncloud.log)
```
Insert your ownCloud log here
```

#### Browser log
```
Insert your browser log here, this could for example include:

a) The javascript console log
b) The network log 
c) ...
```
