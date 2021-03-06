# Base

## node-red :)

> A visual tool for wiring the Internet of Things

```sh
root@edison:~# npm install -g --unsafe-perm node-red
```

```sh
node-red@0.14.6 /usr/lib/node_modules/node-red
-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/
...
...
├── is-utf8@0.2.1
├── on-headers@1.0.1
├── basic-auth@1.0.4
├── media-typer@0.3.0
├── semver@5.3.0
├── node-red-node-rbe@0.1.5
├── clone@1.0.2
├── mustache@2.2.1
├── cookie-parser@1.4.3 (cookie-signature@1.0.6, cookie@0.3.1)
├── passport-http-bearer@1.0.1 (passport-strategy@1.0.0)
├── passport-oauth2-client-password@0.1.2 (passport-strategy@1.0.0)
├── nopt@3.0.6 (abbrev@1.0.9)
├── passport@0.3.2 (pause@0.0.1, passport-strategy@1.0.0)
├── fs.notify@0.0.4 (async@0.1.22, retry@0.6.1)
├── bcryptjs@2.3.0
├── cors@2.7.1 (vary@1.1.0)
├── follow-redirects@0.2.0 (stream-consume@0.1.0, debug@2.2.0)
├── raw-body@2.1.7 (unpipe@1.0.0, bytes@2.4.0, iconv-lite@0.4.13)
├── sentiment@1.0.6 (lodash.assign@4.0.1)
├── body-parser@1.15.2 (content-type@1.0.2, bytes@2.4.0, depd@1.1.0, qs@6.2.0, on-finished@2.3.0, http-errors@1.5.0, debug@2.2.0, iconv-lite@0.4.13, type-is@1.6.13)
├── oauth2orize@1.4.0 (uid2@0.0.3, utils-merge@1.0.0, debug@2.2.0)
├── express@4.14.0 (escape-html@1.0.3, array-flatten@1.1.1, cookie-signature@1.0.6, utils-merge@1.0.0, encodeurl@1.0.1, content-type@1.0.2, merge-descriptors@1.0.1, methods@1.1.2, parseurl@1.3.1, serve-static@1.11.1, content-disposition@0.5.1, range-parser@1.2.0, etag@1.7.0, fresh@0.3.0, vary@1.1.0, cookie@0.3.1, path-to-regexp@0.1.7, depd@1.1.0, qs@6.2.0, on-finished@2.3.0, finalhandler@0.5.0, proxy-addr@1.1.2, debug@2.2.0, type-is@1.6.13, send@0.14.1, accepts@1.3.3)
├── when@3.7.7
├── bcrypt@0.8.7 (bindings@1.2.1, nan@2.3.5)
├── fs-extra@0.30.0 (path-is-absolute@1.0.0, klaw@1.3.0, graceful-fs@4.1.5, jsonfile@2.3.1, rimraf@2.5.4)
├── uglify-js@2.7.0 (async@0.2.10, uglify-to-browserify@1.0.2, source-map@0.5.6, yargs@3.10.0)
├── node-red-node-email@0.1.10 (mailparser@0.6.1, imap@0.8.17, poplib@0.1.7, nodemailer@1.11.0)
├── mqtt@1.13.0 (inherits@2.0.1, reinterval@1.1.0, xtend@4.0.1, help-me@0.1.0, minimist@1.2.0, commist@1.0.0, mqtt-connection@2.1.1, readable-stream@1.0.34, end-of-stream@1.1.0, pump@1.0.1, mqtt-packet@3.4.7, concat-stream@1.5.1, split2@2.1.0, websocket-stream@3.2.1)
├── node-red-node-feedparser@0.1.5 (feedparser@1.1.3, request@2.65.0)
├── node-red-node-twitter@0.1.6 (twitter-ng@0.6.2, oauth@0.9.14, request@2.67.0)
├── i18next@1.10.6 (cookies@0.6.1, json5@0.2.0, i18next-client@1.10.3)
├── ws@0.8.1 (options@0.0.6, ultron@1.0.2, bufferutil@1.2.1, utf-8-validate@1.2.1)
├── cron@1.1.0 (moment-timezone@0.3.1)
├── cheerio@0.19.0 (entities@1.1.1, dom-serializer@0.1.0, css-select@1.0.0, htmlparser2@3.8.3, lodash@3.10.1)
├── xml2js@0.4.17 (sax@1.2.1, xmlbuilder@4.2.1)
└── node-red-node-serialport@0.2.1 (serialport@2.1.2)
```

## pm2 :)

```sh
root@edison:~# npm install -g --unsafe-perm pm2
```

## node-red Start


```sh
root@edison:~# pm2 start /usr/bin/node-red --node-args="--max-old-space-size=256"
```

```sh
��┌��─��─��─��─��─��─��─��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─��─��─��─��─��┬��─��─��─��┬��─��─��─��─��─��┬��─��─��─��─��─��─��─��─��┐
��│ Name     ��│ mode ��│ status ��│ ��↺ ��│ cpu ��│ memory    ��│
��├��─��─��─��─��─��─��─��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─��─��─��─��─��┼��─��─��─��┼��─��─��─��─��─��┼��─��─��─��─��─��─��─��─��┤
��│ node-red ��│ fork ��│ online ��│ 1 ��│ 0%  ��│ 34.3 MB   ��│
��└��─��─��─��─��─��─��─��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─��─��─��─��─��┴��─��─��─��┴��─��─��─��─��─��┴��─��─��─��─��─��─��─��─��┘
 Use `pm2 show <id|name>` to get more details about an app
```

### node-red Restart

```sh
root@edison:~# pm2 restart node-red
```

```sh
Use --update-env to update environment variables
[PM2] Applying action restartProcessId on app [node-red](ids: 0)
[PM2] [node-red](0) ��✓
��┌��─��─��─��─��─��─��─��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─��─��─��─��─��┬��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─��─��─��─��┐
��│ Name     ��│ mode ��│ status ��│ ��↺ ��│ cpu  ��│ memory   ��│
��├��─��─��─��─��─��─��─��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─��─��─��─��─��┼��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─��─��─��─��┤
��│ node-red ��│ fork ��│ online ��│ 2 ��│ 100% ��│ 3.1 MB   ��│
��└��─��─��─��─��─��─��─��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─��─��─��─��─��┴��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─��─��─��─��┘
 Use `pm2 show <id|name>` to get more details about an app
```

### node-red Autostart, Working


http://askubuntu.com/questions/676007/how-do-i-make-my-systemd-service-run-via-specific-user-and-start-on-boot

```sh

```

```sh
root@edison:/etc/init.d# ls
fuse  node-red.sh
```

```sh
root@edison:/etc/init.d# update-rc.d node-red.sh defaults                                                                                                      
 Adding system startup for /etc/init.d/node-red.sh.
root@edison:/etc/init.d# 
```

### node-red Autostart, Not Working

```sh
root@edison:~# nano node-red.sh
pm2 start /usr/bin/node-red --node-args="--max-old-space-size=256"
```

```sh
root@edison:~# chmod +x node-red.sh 
root@edison:~# cd /lib/systemd/system
```

```sh
root@edison:/lib/systemd/system# nano node-red.service
```

```sh
[Unit]
Description=Node-RED   
After=sys-subsystem-net-devices-%i.device

[Service]
ExecStart=/bin/sh /home/root/node-red.sh
Restart=always
RestartSec=10

[Install]
Alias=NodeRed   
WantedBy=multi-user.target
```

```sh
root@edison:/lib/systemd/system# systemctl daemon-reload
```

```sh
root@edison:/lib/systemd/system# systemctl --system enable node-red
ln -s '/lib/systemd/system/node-red.service' '/etc/systemd/system/NodeRed'
ln -s '/lib/systemd/system/node-red.service' '/etc/systemd/system/multi-user.target.wants/node-red.service'
```

```sh
root@edison:/lib/systemd/system# systemctl start node-red
```

```sh
root@edison:/lib/systemd/system# systemctl status node-red.service -l
��● node-red.service - Node-RED
   Loaded: loaded (/lib/systemd/system/node-red.service; enabled)
   Active: active (running) since Sun 2017-03-12 22:59:54 UTC; 1s ago
 Main PID: 479 (bash)
   CGroup: /system.slice/node-red.service
           ��├��─479 /bin/bash /home/root/node-red.sh
           ��└��─480 node /usr/bin/node-red

Mar 12 22:59:54 edison systemd[1]: Started Node-RED.
```

```sh

```

# node-red Dashboard

Go to http://board.ip.adress:1880/#

Loook at the installed __UI Nodes__

- Input
- Output
- Function
- social
- Storage
- Analysis
- Advanced

# node-red Configuration

```sh
root@edison:~# ls .node-red/
flows_edison.json  flows_edison_cred.json  lib  node_modules  settings.js
```

```sh
root@edison:~# ls .node-red/node_modules/
node-red-contrib-socialogix4edison
```

```sh
root@edison:~# cd .node-red
root@edison:~/.node-red# 
```

### node-red Autostart, Not Working

```sh
root@edison:~# cd /etc/init.d/
```

```sh
root@edison:/etc/init.d# pm2 save
```

```sh
[PM2] Saving current process list...
[PM2] Successfully saved in /home/root/.pm2/dump.pm2
root@edison:/etc/init.d# pm2 startup
[PM2] Init System found: systemd
Platform systemd
Template
[Unit]
Description=PM2 process manager
Documentation=https://pm2.keymetrics.io/
After=network.target

[Service]
Type=forking
User=root
LimitNOFILE=infinity
LimitNPROC=infinity
LimitCORE=infinity
TimeoutStartSec=8
Environment=PATH=/usr/bin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
Environment=PM2_HOME=/home/root/.pm2
PIDFile=/home/root/.pm2/pm2.pid

ExecStart=/usr/lib/node_modules/pm2/bin/pm2 resurrect
ExecReload=/usr/lib/node_modules/pm2/bin/pm2 reload all
ExecStop=/usr/lib/node_modules/pm2/bin/pm2 kill

[Install]
WantedBy=multi-user.target

Target path
/etc/systemd/system/pm2-root.service
Command list
[ 'chmod +x /etc/systemd/system/pm2-root.service',
  'systemctl enable pm2-root',
  'systemctl start pm2-root',
  'systemctl daemon-reload',
  'systemctl status pm2-root' ]
[PM2] Writing init configuration in /etc/systemd/system/pm2-root.service
[PM2] Making script booting at startup...
>>> Executing chmod +x /etc/systemd/system/pm2-root.service
[DONE] 
>>> Executing systemctl enable pm2-root
ln -s '/etc/systemd/system/pm2-root.service' '/etc/systemd/system/multi-user.target.wants/pm2-root.service'
[DONE] 
>>> Executing systemctl start pm2-root
[DONE] 
>>> Executing systemctl daemon-reload
[DONE] 
>>> Executing systemctl status pm2-root
��● pm2-root.service - PM2 process manager
   Loaded: loaded (/etc/systemd/system/pm2-root.service; enabled)
   Active: active (running) since Sun 2017-03-12 18:55:52 UTC; 660ms ago
     Docs: https://pm2.keymetrics.io/
 Main PID: 2612 (PM2 v2.4.2: God)
   CGroup: /system.slice/pm2-root.service
           ��‣ 2612 PM2 v2.4.2: God Daemon (/home/root/.pm2)             

Mar 12 18:55:51 edison pm2[2701]: [PM2] Resurrecting
Mar 12 18:55:51 edison pm2[2701]: [PM2] Restoring processes located in /home/root/.pm2/dump.pm2
Mar 12 18:55:52 edison pm2[2701]: ��┌��─��─��─��─��─��─��─��─��─��─��┬��─��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─�┐
Mar 12 18:55:52 edison pm2[2701]: ��│ App name ��│ id ��│ mode ��│ pid  ��│ status ��│ restart ��│ uptime ��│ cpu ��│ mem       ��│ watching│
Mar 12 18:55:52 edison pm2[2701]: ��├��─��─��─��─��─��─��─��─��─��─��┼��─��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─�┤
Mar 12 18:55:52 edison pm2[2701]: ��│ node-red ��│ 0  ��│ fork ��│ 2656 ��│ online ��│ 1       ��│ 5m     ��│ 0%  ��│ 34.0 MB   ��│ disabled│
Mar 12 18:55:52 edison pm2[2701]: ��└��─��─��─��─��─��─��─��─��─��─��┴��─��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─�┘
Mar 12 18:55:52 edison pm2[2701]: Use `pm2 show <id|name>` to get more details about an app
Mar 12 18:55:52 edison systemd[1]: Started PM2 process manager.
[DONE] 
+---------------------------------------+
[PM2] Freeze a process list on reboot via:
$ pm2 save

[PM2] Remove init script via:
$ pm2 unstartup systemd
root@edison:/etc/init.d# 
```

```sh
root@edison:/etc/init.d# pm2 startup systemd
```

```sh
[PM2] Init System found: systemd
Platform systemd
Template
[Unit]
Description=PM2 process manager
Documentation=https://pm2.keymetrics.io/
After=network.target

[Service]
Type=forking
User=root
LimitNOFILE=infinity
LimitNPROC=infinity
LimitCORE=infinity
TimeoutStartSec=8
Environment=PATH=/usr/bin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
Environment=PM2_HOME=/home/root/.pm2
PIDFile=/home/root/.pm2/pm2.pid

ExecStart=/usr/lib/node_modules/pm2/bin/pm2 resurrect
ExecReload=/usr/lib/node_modules/pm2/bin/pm2 reload all
ExecStop=/usr/lib/node_modules/pm2/bin/pm2 kill

[Install]
WantedBy=multi-user.target

Target path
/etc/systemd/system/pm2-root.service
Command list
[ 'chmod +x /etc/systemd/system/pm2-root.service',
  'systemctl enable pm2-root',
  'systemctl start pm2-root',
  'systemctl daemon-reload',
  'systemctl status pm2-root' ]
[PM2] Writing init configuration in /etc/systemd/system/pm2-root.service
[PM2] Making script booting at startup...
>>> Executing chmod +x /etc/systemd/system/pm2-root.service
[DONE] 
>>> Executing systemctl enable pm2-root
[DONE] 
>>> Executing systemctl start pm2-root
[DONE] 
>>> Executing systemctl daemon-reload
[DONE] 
>>> Executing systemctl status pm2-root
��● pm2-root.service - PM2 process manager
   Loaded: loaded (/etc/systemd/system/pm2-root.service; enabled)
   Active: active (running) since Sun 2017-03-12 21:44:32 UTC; 949ms ago
     Docs: https://pm2.keymetrics.io/
 Main PID: 421 (PM2 v2.4.2: God)
   CGroup: /system.slice/pm2-root.service
           ��‣ 421 PM2 v2.4.2: God Daemon (/home/root/.pm2)             

Mar 12 21:44:32 edison pm2[598]: [PM2] Resurrecting
Mar 12 21:44:32 edison pm2[598]: [PM2] Restoring processes located in /home/root/.pm2/dump.pm2
Mar 12 21:44:32 edison pm2[598]: ��┌��─��─��─��─��─��─��─��─��─��─��┬��─��─��─��─��┬��─��─��─��─��─��─��┬��─��─��─��─��─��┬��─��─��─��─��─��┐
Mar 12 21:44:32 edison pm2[598]: ��│ App name ��│ id ��│ mode ��│ pid ��│ status ��│ restart ��│ uptime ��│ cpu ��│ mem       ��│ watching �│
Mar 12 21:44:32 edison pm2[598]: ��├��─��─��─��─��─��─��─��─��─��─��┼��─��─��─��─��┼��─��─��─��─��─��─��┼��─��─��─��─��─��┼��─��─��─��─��─��┤
Mar 12 21:44:32 edison pm2[598]: ��│ node-red ��│ 0  ��│ fork ��│ 573 ��│ online ��│ 7       ��│ 11s    ��│ 79% ��│ 34.9 MB   ��│ disabled �│
Mar 12 21:44:32 edison pm2[598]: ��└��─��─��─��─��─��─��─��─��─��─��┴��─��─��─��─��┴��─��─��─��─��─��─��┴��─��─��─��─��─��┴��─��─��─��─��─��┘
Mar 12 21:44:32 edison pm2[598]: Use `pm2 show <id|name>` to get more details about an app
Mar 12 21:44:32 edison systemd[1]: Started PM2 process manager.
[DONE] 
+---------------------------------------+
[PM2] Freeze a process list on reboot via:
$ pm2 save

[PM2] Remove init script via:
$ pm2 unstartup systemd
root@edison:/etc/init.d# 
```

```sh
root@edison:/etc/init.d# cd
root@edison:~# 
```

# Crontab

```sh
root@edison:~# opkg install cronie
Installing cronie (1.4.11-r0) on root.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/cronie_1.4.11-r0_core2-32.ipk.
Installing pam-plugin-access (1.1.6-r5) on root.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/pam-plugin-access_1.1.6-r5_core2-32.ipk.
Running groupadd commands...
NOTE: Performing groupadd with [ --system crontab] and 10 times of retry
Configuring pam-plugin-access.
Configuring cronie.
ln -s '/lib/systemd/system/crond.service' '/etc/systemd/system/multi-user.target.wants/crond.service'
root@edison:~# 
```

```sh
systemctl status pm2-root.service
echo $?
pm2 restart node-red
```
